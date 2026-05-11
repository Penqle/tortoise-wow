{
  description = "Tortoise-WoW flake for NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix2container.url = "github:nlewo/nix2container";
  };

  outputs =
    {
      self,
      nixpkgs,
      nix2container,
    }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      forEachSystem =
        f: nixpkgs.lib.genAttrs supportedSystems (system: f nixpkgs.legacyPackages.${system});

      mkBuildInputs =
        pkgs: with pkgs; [
          ace
          boost
          mariadb-connector-c
          openssl
          zlib
        ];

      mkNativeBuildInputs =
        pkgs: with pkgs; [
          cmake
          git
          ninja
          pkg-config
        ];

      makeTortoise =
        pkgs: cmakeFlags:
        let
          buildInputs = mkBuildInputs pkgs;
          nativeBuildInputs = mkNativeBuildInputs pkgs;
        in
        pkgs.stdenv.mkDerivation {
          pname = "tortoise-wow";
          version = "unstable-2025-05-07";

          src = ./.;

          inherit nativeBuildInputs buildInputs;

          postPatch = ''
            substituteInPlace CMakeLists.txt \
              --replace "find_package(MySQL REQUIRED)" "set(MySQL_FOUND TRUE)" \
              --replace "-march=native" "-march=x86-64"

            # Force it to use CMake's built-in FindOpenSSL instead of the bundled one
            rm cmake/FindOpenSSL.cmake

            # Add missing includes for C++17 features
            for f in src/game/AccountMgr.h src/game/Conditions.h src/game/DynamicVisibilityMgr.h src/game/ObjectMgr.h src/game/Objects/Player.h src/game/Logging/DatabaseLogger.hpp src/shared/Database/AutoUpdater.cpp; do
              sed -i '1i #include <optional>' "$f"
            done
          '';

          NIX_LDFLAGS = "-lmariadb -L${pkgs.mariadb-connector-c.out}/lib/mariadb";
          env.CXXFLAGS = "-I${pkgs.mariadb-connector-c.dev}/include/mariadb -Wno-error=template-body";

          inherit cmakeFlags;

          installPhase = ''
            mkdir -p $out/bin $out/etc
            ninja install
            find $out -name "*.conf.dist" -exec cp {} $out/etc/ \;
          '';
        };
    in
    {
      packages = nixpkgs.lib.genAttrs supportedSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          nix2containerPkgs = nix2container.packages.${system};

          # Build the main package
          tortoiseWowPkg = makeTortoise pkgs [
            "-G Ninja"
            "-DCMAKE_BUILD_TYPE=Release"
            "-DUSE_PCH=OFF"
            "-DUSE_STD_MALLOC=ON"
            "-DUSE_EXTRACTORS=ON"
            "-DBUILD_FOR_HOST_CPU=OFF"
            "-DCMAKE_INSTALL_PREFIX=${placeholder "out"}"
            "-DOPENSSL_ROOT_DIR=${pkgs.openssl.dev}"
            "-DOPENSSL_INCLUDE_DIR=${pkgs.openssl.dev}/include"
          ];

          tortoiseWowDevPkg = makeTortoise pkgs [
            "-G Ninja"
            "-DCMAKE_BUILD_TYPE=Debug"
            "-DUSE_PCH=OFF"
            "-DUSE_STD_MALLOC=ON"
            "-DUSE_EXTRACTORS=ON"
            "-DBUILD_FOR_HOST_CPU=OFF"
            "-DCMAKE_INSTALL_PREFIX=${placeholder "out"}"
            "-DOPENSSL_ROOT_DIR=${pkgs.openssl.dev}"
            "-DOPENSSL_INCLUDE_DIR=${pkgs.openssl.dev}/include"
            "-DALLOW_TURTLE_ADDONS=ON"
            "-DUSE_REALMMERGE=ON"
          ];

          # Base layer with runtime dependencies (shared between realmd and mangosd)
          base-layer = nix2containerPkgs.nix2container.buildLayer {
            name = "tortoise-wow-base";
            deps = mkBuildInputs pkgs;
          };

          # Realm server wrapper script
          realmd-wrapper = pkgs.runCommand "start-realmd" { } ''
                          mkdir -p $out/bin
                          cat > $out/bin/start-realmd <<EOF
            #!${pkgs.bash}/bin/sh
            exec ${tortoiseWowPkg}/bin/realmd -c /etc/realmd.conf
            EOF
                          chmod +x $out/bin/start-realmd
          '';

          # World server wrapper script
          mangosd-wrapper = pkgs.runCommand "start-mangosd" { } ''
                          mkdir -p $out/bin
                          cat > $out/bin/start-mangosd <<EOF
            #!${pkgs.bash}/bin/sh
            exec ${tortoiseWowPkg}/bin/mangosd -c /etc/mangosd.conf
            EOF
                          chmod +x $out/bin/start-mangosd
          '';

          # Combined root for realmd (tortoise-wow + wrapper)
          realmd-root = pkgs.symlinkJoin {
            name = "realmd-root";
            paths = [
              tortoiseWowPkg
              realmd-wrapper
            ];
          };

          # Combined root for mangosd (tortoise-wow + wrapper)
          mangosd-root = pkgs.symlinkJoin {
            name = "mangosd-root";
            paths = [
              tortoiseWowPkg
              mangosd-wrapper
            ];
          };
          # Realm server (game server) Docker image - nix2container version
          realmd-image = nix2containerPkgs.nix2container.buildImage {
            name = "tortoise-wow-realmd";
            tag = "latest";
            layers = [ base-layer ];
            copyToRoot = realmd-root;
            config = {
              entrypoint = [ "/bin/start-realmd" ];
              ExposedPorts = {
                "3724/tcp" = { };
              };
            };
          };

          # World server Docker image - nix2container version
          mangosd-image = nix2containerPkgs.nix2container.buildImage {
            name = "tortoise-wow-mangosd";
            tag = "latest";
            layers = [ base-layer ];
            copyToRoot = mangosd-root;
            config = {
              entrypoint = [ "/bin/start-mangosd" ];
              ExposedPorts = {
                "8085/tcp" = { };
              };
            };
          };

          # Realm server Docker image - dockerTools version (produces .tar.gz)
          realmd-image-tar = pkgs.dockerTools.buildImage {
            name = "tortoise-wow-realmd";
            tag = "latest";
            copyToRoot = [
              realmd-root
              pkgs.bash
              pkgs.coreutils
            ];
            config = {
              Entrypoint = [ "/bin/start-realmd" ];
              ExposedPorts = {
                "3724/tcp" = { };
              };
            };
          };

          # World server Docker image - dockerTools version (produces .tar.gz)
          mangosd-image-tar = pkgs.dockerTools.buildImage {
            name = "tortoise-wow-mangosd";
            tag = "latest";
            copyToRoot = [
              mangosd-root
              pkgs.bash
              pkgs.coreutils
            ];
            config = {
              Entrypoint = [ "/bin/start-mangosd" ];
              ExposedPorts = {
                "8085/tcp" = { };
              };
            };
          };
          # Dev wrapper scripts
          realmd-dev-wrapper = pkgs.runCommand "start-realmd" { } ''
            mkdir -p $out/bin
            cat > $out/bin/start-realmd <<EOF
            #!${pkgs.bash}/bin/sh
            exec ${tortoiseWowDevPkg}/bin/realmd -c /etc/realmd.conf
            EOF
            chmod +x $out/bin/start-realmd
          '';

          mangosd-dev-wrapper = pkgs.runCommand "start-mangosd" { } ''
            mkdir -p $out/bin
            cat > $out/bin/start-mangosd <<EOF
            #!${pkgs.bash}/bin/sh
            exec ${tortoiseWowDevPkg}/bin/mangosd -c /etc/mangosd.conf
            EOF
            chmod +x $out/bin/start-mangosd
          '';

          realmd-dev-root = pkgs.symlinkJoin {
            name = "realmd-dev-root";
            paths = [
              tortoiseWowDevPkg
              realmd-dev-wrapper
            ];
          };

          mangosd-dev-root = pkgs.symlinkJoin {
            name = "mangosd-dev-root";
            paths = [
              tortoiseWowDevPkg
              mangosd-dev-wrapper
            ];
          };

          realmd-image-tar-dev = pkgs.dockerTools.buildImage {
            name = "tortoise-wow-realmd-dev";
            tag = "latest";
            copyToRoot = [
              realmd-dev-root
              pkgs.bash
              pkgs.coreutils
            ];
            config = {
              Entrypoint = [ "/bin/start-realmd" ];
              ExposedPorts = {
                "3724/tcp" = { };
              };
            };
          };

          mangosd-image-tar-dev = pkgs.dockerTools.buildImage {
            name = "tortoise-wow-mangosd-dev";
            tag = "latest";
            copyToRoot = [
              mangosd-dev-root
              pkgs.bash
              pkgs.coreutils
            ];
            config = {
              Entrypoint = [ "/bin/start-mangosd" ];
              ExposedPorts = {
                "8086/tcp" = { };
              };
            };
          };
        in
        {
          tortoise-wow = tortoiseWowPkg;
          default = tortoiseWowPkg;
          inherit realmd-image mangosd-image;
          inherit realmd-image-tar mangosd-image-tar;
          inherit realmd-image-tar-dev mangosd-image-tar-dev;
        }
      );

      devShells = forEachSystem (pkgs: {
        default = pkgs.mkShell {
          name = "tortoise-wow-dev";
          buildInputs = mkBuildInputs pkgs;
          packages = mkNativeBuildInputs pkgs;
        };
      });

      nixosModules.default =
        {
          config,
          lib,
          pkgs,
          ...
        }:
        let
          cfg = config.services.tortoise-wow;
        in
        {
          options.services.tortoise-wow = {
            enable = lib.mkEnableOption "Tortoise-WoW server";
            package = lib.mkOption {
              type = lib.types.package;
              default = self.packages.${pkgs.system}.tortoise-wow;
            };
            dataPath = lib.mkOption {
              type = lib.types.path;
              default = "/var/lib/tortoise-wow";
            };
            realmName = lib.mkOption {
              type = lib.types.str;
              default = "Tortoise-WoW";
            };
            address = lib.mkOption {
              type = lib.types.str;
              default = "127.0.0.1";
            };
            db_username = lib.mkOption {
              type = lib.types.str;
              default = "mangos";
            };
            db_password = lib.mkOption {
              type = lib.types.str;
              default = "mangos";
            };
          };

          config = lib.mkIf cfg.enable {
            users.users.tortoise-wow = {
              isSystemUser = true;
              group = "tortoise-wow";
              extraGroups = [ "mysql" ];
            };
            users.groups.tortoise-wow = { };

            services.mysql = {
              enable = true;
              package = lib.mkDefault pkgs.mariadb;
            };
            # Needs new db init for turtle. Below is vmangos example
            # systemd.services.tortoise-wow-db-init = {
            #   description = "Tortoise-WoW Database Initialization";
            #   after = [ "mysql.service" ];
            #   requires = [ "mysql.service" ];
            #   wantedBy = [ "multi-user.target" ];
            #   unitConfig.ConditionPathExists = "!${cfg.dataPath}/.db-initialized";
            #   serviceConfig = {
            #     Type = "oneshot";
            #     RemainAfterExit = true;
            #     ExecStart = pkgs.writeShellScript "tortoise-wow-db-init" ''
            #       set -e
            #       PATH=${pkgs.mariadb}/bin:/run/current-system/sw/bin
            #       ${pkgs.mariadb}/bin/mariadb -u root <<EOF
            #       CREATE DATABASE IF NOT EXISTS \`realmd\`;
            #       CREATE DATABASE IF NOT EXISTS \`mangos\`;
            #       CREATE DATABASE IF NOT EXISTS \`characters\`;
            #       CREATE DATABASE IF NOT EXISTS \`logs\`;
            #       CREATE USER IF NOT EXISTS '${cfg.db_username}'@'localhost' IDENTIFIED BY '${cfg.db_password}';
            #       GRANT ALL PRIVILEGES ON \`realmd\`.* TO '${cfg.db_username}'@'localhost';
            #       GRANT ALL PRIVILEGES ON \`mangos\`.* TO '${cfg.db_username}'@'localhost';
            #       GRANT ALL PRIVILEGES ON \`characters\`.* TO '${cfg.db_username}'@'localhost';
            #       GRANT ALL PRIVILEGES ON \`logs\`.* TO '${cfg.db_username}'@'localhost';
            #       FLUSH PRIVILEGES;
            #       EOF
            #
            #       ${pkgs.mariadb}/bin/mariadb -u ${cfg.db_username} -p${cfg.db_password} realmd     < ${cfg.dataPath}/sql/base/realmd.sql
            #       ${pkgs.mariadb}/bin/mariadb -u ${cfg.db_username} -p${cfg.db_password} characters < ${cfg.dataPath}/sql/base/characters.sql
            #       ${pkgs.mariadb}/bin/mariadb -u ${cfg.db_username} -p${cfg.db_password} mangos     < ${cfg.dataPath}/sql/base/mangos.sql
            #
            #       chown -R tortoise-wow ${cfg.dataPath}
            #       touch ${cfg.dataPath}/.db-initialized
            #     '';
            #   };
            # };

            systemd.services.tortoise-wow-realmd = {
              after = [
                "network.target"
                "mysql.service"
                "tortoise-wow-db-init.service"
              ];
              wantedBy = [ "multi-user.target" ];
              serviceConfig = {
                ExecStart = "${cfg.package}/bin/realmd -c ${cfg.dataPath}/etc/realmd.conf";
                WorkingDirectory = cfg.dataPath;
                User = "tortoise-wow";
                Restart = "always";
              };
            };
            # BUGGED, needs tty, stdin for mangosd console to not reboot each time. Solved for docker, not systemd (yet)
            systemd.services.tortoise-wow-mangosd = {
              after = [ "tortoise-wow-realmd.service" ];
              wantedBy = [ "multi-user.target" ];
              serviceConfig = {
                ExecStart = "${cfg.package}/bin/mangosd -c ${cfg.dataPath}/etc/mangosd.conf";
                WorkingDirectory = cfg.dataPath;
                User = "tortoise-wow";
                Restart = "always";
              };
            };
          };
        };
    };
}
