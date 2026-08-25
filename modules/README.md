# MODULE AUTHORING

Modules live under `modules/<module-name>/`.
A module is discovered when it has a `src/` directory.

Create a module with:

```sh
modules/create_module.sh mod-example
```

The generator refuses to overwrite an existing module directory.
It does not create, delete, or modify any `.git` directory.

## Layout

```text
modules/mod-example/
  src/
    mod-example.cpp
  conf/
    mod-example.conf.dist
  data/
    sql/
      auth/
      character/
      world/
  mod-example.cmake
```

Only `src/` is required for discovery.
The other folders are optional.

## Build Options

Global module mode:

```sh
cmake -S . -B build -DMODULES=static
cmake -S . -B build -DMODULES=dynamic
cmake -S . -B build -DMODULES=disabled
```

Per-module cache variables are generated from module names:

```sh
cmake -S . -B build -DMODULE_MOD_EXAMPLE=static
```

CMake prints the effective module mode and cache variable for each discovered module.

## C++ Scripts

Modules can register scripts with the same script classes as core scripts:

```cpp
#include "ScriptObjects.h"

class ExampleWorldScript : public WorldScript
{
public:
    ExampleWorldScript() : WorldScript("example_world", { WORLDHOOK_ON_STARTUP }) {}

    void OnStartup() override {}
};

void Addmod_exampleScripts()
{
    new ExampleWorldScript();
}
```

The loader function name is `Add<module-name-sanitized>Scripts`.
Non-alphanumeric characters become `_`.

## Config

Put module config defaults in:

```text
modules/mod-example/conf/mod-example.conf.dist
```

Enabled module config templates are installed as `.conf.dist` files.
Before the server will load them, copy or move each template to the same name without `.dist` in the module config directory and review the settings.

## SQL

Module migrations can live in:

```text
modules/mod-example/data/sql/auth/
modules/mod-example/data/sql/character/
modules/mod-example/data/sql/world/
```

They are processed by the DB auto-updater when the module is allowed by:

```ini
Database.AutoUpdate.AllowedModules = "all"
```

Use `all` to allow every enabled module, or a comma-separated allowlist.

Module-owned localized strings should use:

```sql
module_string(module, id, content_default)
module_string_locale(module, id, locale, content)
```

Use `sObjectMgr.GetModuleString("mod-example", id, localeIndex)` from C++.

## Tortoise Differences From AzerothCore

- Use `TW_*` CMake helpers, not AzerothCore `AC_*` helper names.
- The project naming in CMake is Tortoise-specific.
- This core uses `sConfig`, not AzerothCore `sConfigMgr`.
- Module config files are `conf/*.conf.dist` and load through local module config support.
- Module SQL folders use this project's DB folder names: usually `auth`, `character`, and `world`.
- Module strings use `content_default` and `content`, matching this project's string naming style.
- WotLK-only AzerothCore script APIs are not available unless this Vanilla core has an equivalent system.
