# Testlab pipeline (Windows)

One PowerShell script that takes a Windows machine from "nothing set up" to a running
Turtle-WoW testlab: it verifies the client data, installs the vcpkg dependencies,
clones/updates the source, builds it, lays out the server directory, creates and fills all
four databases, writes the configuration files and generates the launchers.

By default it builds the engine alone, from Penqle. Add `-WithBots` for a testlab with
playerbots: that pulls `mod-playerbots` and `mod-dungeon-clear` from Shyalya on top of it.

It is the automated form of [`INSTALL-WINDOWS.md`](../../INSTALL-WINDOWS.md). Read that
document if you want to know *why* any particular step is there — this one only tells you
how to run it.

**Windows only.** PowerShell 5.1 or newer, and it drives MSVC. On Linux, follow
[`INSTALL-LINUX.md`](../../INSTALL-LINUX.md) instead.

---

## What you have to supply

The script automates everything it can, but four things cannot be downloaded for you:

| What | Where it goes | Notes |
|---|---|---|
| **Client data** | `<testlab>\server\data\` | `dbc`, `maps`, `vmaps`, `mmaps`, extracted from a **Turtle WoW 1.18.1 client, build 7272**. See `INSTALL-WINDOWS.md` §4. |
| **A database** | `<testlab>\server\mariadb-10.3.39-winx64\` | A portable MariaDB is the intended setup — pass `-MariaDbFolderName` if your folder is named differently. It must already be initialised and startable. An installed MariaDB/MySQL works too: with no portable copy present the client is found on `PATH` or in the usual install locations. |
| **Visual Studio 2022** | — | Workload *Desktop development with C++*. |
| **CMake ≥ 3.16 and Git** | on `PATH` | — |

vcpkg itself is not installed for you either, but the packages inside it are: point
`-VcpkgDirectory` at your vcpkg checkout and the script installs ACE and the ten Boost
libraries the playerbots module needs.

## What has to be present

### Files this tool is made of

| File | Required? | Why |
|---|---|---|
| `Setup-Testlab.ps1` | **yes** | The pipeline itself. |
| `dbc_verifier.json` | **yes** | SHA256 manifest step 01 checks the DBC files against. The run stops without it. Not the same file as `tools/dbc_verification/manifest.json`. |
| `Run-Testlab.bat` | optional | Convenience launcher: forwards arguments, checks the execution policy, keeps the window open on failure. The `.ps1` runs fine on its own. |
| `README.md` | no | This document. |

Copy the first three together; the script looks for `dbc_verifier.json` in the workspace
root first and falls back to its own folder, so either arrangement works.

### What you supply

| Path | Required? | Notes |
|---|---|---|
| `server\data\dbc`, `maps`, `vmaps`, `mmaps` | **yes** | Extracted from a **Turtle WoW 1.18.1 client, build 7272**. Every DBC is hash-checked. See `INSTALL-WINDOWS.md` §4. |
| `server\<portable MariaDB>\` | see notes | The intended setup, and the safest: it is a database nothing else uses. Not needed if you point the script at an installed MariaDB/MySQL instead. |

### Tools on the machine

| Tool | Required? | Checked by the preflight |
|---|---|---|
| PowerShell 5.1+ | **yes** | — (it is what runs the script) |
| Git | **yes** | yes, on `PATH` |
| CMake 3.16+ | **yes** | yes, on `PATH` |
| Visual Studio 2022, *Desktop development with C++* | **yes** | best effort, via `vswhere` |
| vcpkg | **yes** | yes — the ACE and Boost packages inside it are installed for you |
| MariaDB or MySQL, running | **yes** | yes, including that it answers and accepts the credentials |

Everything above is verified **before** the pipeline drops a single database.

### What the pipeline creates

`tortoise-wow\` (the clone), `server\bin`, `lib`, `etc`, `tools`, `logs`, `honor`, `pdump`,
`lua_scripts`, the three launcher `.bat` files, and the logs. None of it needs to exist
beforehand.

## Folder layout

The script works inside a *testlab root* that holds the source checkout and the server
side by side:

```
<testlab root>\
├─ Setup-Testlab.ps1          <- this script (when you copy it out)
├─ dbc_verifier.json          <- DBC hash manifest (ships next to the script)
├─ tortoise-wow\              <- created by the script (git clone)
├─ server\
│  ├─ data\                   <- YOU provide: dbc, maps, vmaps, mmaps
│  ├─ mariadb-10.3.39-winx64\ <- YOU provide: portable MariaDB
│  ├─ bin\  etc\  lib\  ...   <- created by the script
│  └─ 1.Start mysql.bat …     <- created by the script
├─ pipeline_console.log       <- full transcript of every run
├─ server_build.log           <- compiler output of the last build
└─ pipeline_running.lock      <- present only while a run is in progress
```

## Logging

Everything the pipeline prints — its own messages **and** the output of git, cmake, vcpkg
and the database client — is written to `pipeline_console.log` in the workspace root as
well as to the console. No `> log.txt` redirection needed.

`server_build.log` additionally holds just the compiler output of the last build, which is
the file to open when a build fails.

> This took explicit work: `Start-Transcript` alone records only what passes through
> PowerShell's own streams. A native command left to write straight to the console, and
> anything started with `Start-Process`, bypass it entirely — so the log used to contain
> the pipeline's own messages and almost nothing from the tools it drives. Native calls are
> now routed back through the pipeline, and the two places that genuinely need
> `Start-Process` capture their output to files and replay it.

## Running it

Two ways, both fine:

**Copy it out** (simplest — the testlab root is wherever the script sits):

```powershell
mkdir C:\WOW\testlab
copy tools\testlab_pipeline\Setup-Testlab.ps1  C:\WOW\testlab\
copy tools\testlab_pipeline\Run-Testlab.bat    C:\WOW\testlab\
copy tools\testlab_pipeline\dbc_verifier.json  C:\WOW\testlab\
cd C:\WOW\testlab
# put server\data\ and server\mariadb-…\ in place first, then:
.\Run-Testlab.bat
```

**Run it in place** from a checkout, pointing at a testlab elsewhere:

```powershell
.\tools\testlab_pipeline\Run-Testlab.bat -WorkspaceRoot C:\WOW\testlab
```

Start MariaDB (`server\1.Start mysql.bat`) before running — the pipeline needs it up, and
the preflight will stop you if it is not.

### Execution policy

Windows will not run an unsigned PowerShell script under the `Restricted` policy, which
is the default on client editions. Allowing it for the current window only, leaving the
machine setting alone:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
```

A copy cloned or downloaded from the internet also carries a mark-of-the-web that blocks
it under `RemoteSigned`. `Unblock-File` clears that:

```powershell
Get-ChildItem .\tools\testlab_pipeline\*.ps1 | Unblock-File
```

`Run-Testlab.bat` does none of this for you — whether to run scripts is your decision,
not the launcher's. What it does do is check the policy first and tell you which of the
two above you need, rather than failing with PowerShell's own message.

### Use `Run-Testlab.bat`, or call the `.ps1` yourself

The launcher forwards every argument, keeps your PowerShell profile out of the run so
the pipeline behaves the same on every machine, and holds the window open on failure so
a double-clicked run does not vanish before the error can be read. None of that is
required — `Setup-Testlab.ps1` runs perfectly well on its own.

All parameters work through it:

```powershell
.\Run-Testlab.bat -SkipBotRegen
.\Run-Testlab.bat -WorkspaceRoot C:\WOW\testlab -VcpkgDirectory D:\vcpkg
.\Run-Testlab.bat -BranchName my-topic-branch
```

On failure it keeps the window open, so a double-clicked run does not vanish before the
error can be read.

### Parameters

Nothing inside the script needs editing to run it against a different machine, fork or
branch — every environment-specific value is a parameter.

| Parameter | Default | What it does |
|---|---|---|
| `-WorkspaceRoot` | the script's folder | Testlab root, as laid out above. Relative paths are resolved against your current directory. |
| `-VcpkgDirectory` | *discovered* | vcpkg providing ACE + Boost. Left out it is found via `VCPKG_ROOT`, then `vcpkg.exe` on `PATH`, then conventional locations. Given explicitly it is used or the run fails — never silently replaced. |
| `-VcpkgTriplet` | `x64-windows` | Triplet the dependencies are installed for. |
| `-RootPassword` | `mangos` | Database `root` password, used for schema creation and imports. |
| `-DbPassword` | `mangos` | Password for the service account the script creates. |
| `-DbUser` | `mangos` | Service account the server logs in with. |
| `-DbAccountHost` | *from `-DbHost`* | Host part of that account — the `localhost` in `'mangos'@'localhost'`. `localhost` for a local server, `%` for a remote one. |
| `-DbPrefix` | `tw_` | Prefix for all four database names — see below. |
| `-WorldDatabaseName` etc. | *from prefix* | Override a single database name. Also `-CharacterDatabaseName`, `-LoginDatabaseName`, `-LogsDatabaseName`. |
| `-MariaDbFolderName` | `mariadb-10.3.39-winx64` | Portable MariaDB folder name inside `server\`, tried first. |
| `-DbFlavor` | `Auto` | `Auto`, `MariaDB` or `MySQL`. Narrows discovery on a machine that has both. |
| `-MariaDbClientPath` | *discovered* | Explicit `mariadb.exe` / `mysql.exe`. Left out: the portable server, then `PATH`, then installed MariaDB/MySQL. Given explicitly it is used or the run fails. |
| `-DbHost` / `-DbPort` | *client default* | Connection target. Leave empty for the bundled portable server. |
| `-DbStartupTimeoutSeconds` | `30` | How long the preflight waits for the server to start answering. |
| `-RepoUrl` | Penqle/tortoise-wow | Source repository to build — the engine. The playerbot and dungeon-clear modules come separately, from `-ModulesRepoUrl`, and only under `-WithBots`. |
| `-BranchName` | `main` | Branch to build — point it at a topic branch to test one. |
| `-PatchRemoteUrl` | Penqle/tortoise-wow | Remote the `-applyPatches` commits are fetched from. |
| `-ModulesRepoUrl` / `-ModulesBranch` | Shyalya/tortoise-wow / `playerbots-integration-gh` | Independent of `-RepoUrl`: where `modules/mod-playerbots` and `modules/mod-dungeon-clear` are synced from (`sql\` included). Only read under `-WithBots`. |
| `-RealmlistIPAddress` / `-RealmlistPort` | `127.0.0.1` / `8090` | Realm entry written to `tw_logon.realmlist`. The port must match `WorldServerPort`. |
| `-MinRandomBots` / `-MaxRandomBots` | `5` / `10` | Bot population written into `aiplayerbot.conf`. |
| `-RandomBotMinLevel` / `-RandomBotMaxLevel` | `1` / `20` | Bot level range. |
| `-RandomBotAccountsCount` | `10` | Number of bot accounts. |
| `-SkipBotRegen` | off | Keeps existing characters/accounts: dumps `tw_char` + `tw_logon` first and restores them at the end. Also leaves `server\pdump` in place — the only copy of an exported character. `server\honor` is cleared either way; nothing in it survives the server restart it was written for. |
| `-EnableSqlLog` | off | Writes every SQL statement to a log file (`LogSQL` in `mangosd.conf`). Off by default — on, it's 94% of a normal run's log, mostly per-connection `SET NAMES`/`SET CHARACTER SET` noise. |
| `-LogLevel` | `0` | Console/log verbosity for mangosd and realmd: `0` Minimum, `1` Basic & Error, `2` Detail, `3` Full/Debug. The shipped templates default to `1`. |
| `-DatabaseOnly` | off | Touches only the databases — no git update, no compilation, no folder cleanup, no config file changes. Combine with `-SkipBotRegen` to reset only `tw_world` (a "first-boot" test of a new migration); without it, all four databases are dropped and rebuilt. |
| `-WithBots` | off | Adds `mod-playerbots` and `mod-dungeon-clear` on top of the engine: syncs both module directories, imports the playerbot SQL, tunes `aiplayerbot.conf`, and configures CMake with `BUILD_PLAYERBOTS=ON` and both modules `static`. Without it the run builds the engine alone, which is what the default `-RepoUrl` carries. |
| `-applyPatches` | — | Semicolon-separated commit hashes **or branch/tag names** to cherry-pick, e.g. `-applyPatches "0ee0748;abc1234"` or `-applyPatches "my-fix-branch"`. A branch expands to the commits it has and the checkout does not, oldest first. |

```powershell
.\Run-Testlab.bat -VcpkgDirectory D:\vcpkg -RootPassword "hunter2" -SkipBotRegen
.\Run-Testlab.bat -RepoUrl https://github.com/me/tortoise-wow.git -BranchName my-fix
.\Run-Testlab.bat -DbFlavor MySQL -DbPort 3307
.\Run-Testlab.bat -DatabaseOnly -SkipBotRegen
```

### Testing a core pull request against Penqle

Point the build at the repository the pull request targets, name the branch, and leave the
modules out — the run stops at the cherry-pick if it no longer applies, and gets all the way
through the compiler if it does:

```powershell
.\Run-Testlab.bat -RepoUrl https://github.com/Penqle/tortoise-wow.git -BranchName main `
                  -PatchRemoteUrl https://github.com/me/tortoise-wow.git `
                  -applyPatches "my-core-fix"
```

`-PatchRemoteUrl` takes a local path as readily as a URL, so a branch that has not been
pushed anywhere can be tested straight out of another checkout on the same machine:

```powershell
.\Run-Testlab.bat -RepoUrl https://github.com/Penqle/tortoise-wow.git -BranchName main `
                  -PatchRemoteUrl C:\WOW\source\tortoise-wow_AIBot\tortoise-wow `
                  -applyPatches "my-core-fix"
```

A branch cut from a different base than `-BranchName` expands to that whole lineage rather
than to a pull request; the run refuses anything past 50 commits and says so, rather than
grinding through a conflict storm.

`-BranchName` also accepts a branch that exists only in your own checkout — an integration
branch you assembled locally and never pushed. The run notices there is nothing to pull from
and builds it as it stands.

### The git remotes it creates

The run manages two remotes of its own in the source checkout and never touches `origin`:

| Remote | Points at | Used for |
| --- | --- | --- |
| `testlab-source` | `-RepoUrl` | Fetching and updating the branch being built |
| `testlab-patches` | `-PatchRemoteUrl` | Fetching the `-applyPatches` commits |

This matters because the source checkout is somewhere you also work. An earlier version
pointed `origin` at `-RepoUrl` on every run, so a branch of yours tracking `origin/<name>`
silently started tracking a different repository — and the `fetch --prune` then deleted the
remote-tracking refs of the repository it actually came from. Whatever `origin` is in your
checkout is now left exactly as you set it.

The module checkout under `modules-source/` is the exception: the script creates it, only
the script commits in it, so there is no configuration of yours to damage and it drives
`origin` directly.

If you ran a version before this change, `origin` in your source checkout may still be
pointing wherever the last run left it. Put it back once:

```powershell
git -C <source checkout> remote set-url origin https://github.com/me/tortoise-wow.git
```

Full help, including every parameter and more examples:

```powershell
Get-Help .\Setup-Testlab.ps1              # description with the parameters grouped by purpose
Get-Help .\Setup-Testlab.ps1 -Full        # every parameter in detail
Get-Help .\Setup-Testlab.ps1 -Parameter DbFlavor
Get-Help .\Setup-Testlab.ps1 -Examples
```

PowerShell renders the `SYNTAX` block as one unbroken line and there is no way to format
it; the grouped list in the description is the readable version. Parameters are named-only,
so a stray unnamed argument is rejected rather than bound to whatever sits in that position.

### Several testlabs on one database server

The four databases are named from `-DbPrefix`, so a second testlab needs one flag:

```powershell
.\Run-Testlab.bat -WorkspaceRoot C:\WOW\lab2 -DbPrefix "lab2_" -RealmlistPort 8091
```

That gives `lab2_world`, `lab2_char`, `lab2_logon` and `lab2_logs` alongside the default
`tw_*` set, untouched. Individual names can be overridden with `-WorldDatabaseName` and its
three siblings when one database has to sit outside the scheme.

Renaming reaches everywhere it has to. `create_databases.sql` names the stock databases in
its `CREATE DATABASE` and `USE` statements, so it is rewritten as it is imported; and the
server has to be told, so the pipeline writes all four `*.Info` connection strings into
`mangosd.conf` and the one in `realmd.conf`.

> Writing those connection strings fixes a bug that predates the prefix. The shipped
> templates hard-code `127.0.0.1;3306;mangos;mangos;tw_*` and nothing rewrote them, so
> `-DbPassword`, `-DbUser`, `-DbHost` and `-DbPort` changed what the *pipeline* connected
> with while the *server* was still told the template's values. Anything but the defaults
> produced a server that could not log in to its own databases. All five lines now come
> from the settings actually in use.

Give each testlab its own `-RealmlistPort` and set `WorldServerPort` in its `mangosd.conf`
to match, or the second realm will hand clients a port nobody is listening on.

### MariaDB or MySQL

Either works. MariaDB is what this testlab ships and what the project targets; MySQL 5.7
and 8 are supported too, and `-DbFlavor` picks a side when both are installed.

Two differences the script already handles, so you do not have to:

- **Client naming.** MariaDB renamed its client to `mariadb.exe` in 10.6, and recent builds
  ship no `mysql.exe` at all — while the 10.3 portable build here has only `mysql.exe`.
  Both spellings are accepted, and the dump tool (`mariadb-dump.exe` / `mysqldump.exe`) is
  paired from the same directory.
- **User creation.** MySQL 8 removed `GRANT ... IDENTIFIED BY`, which is a syntax error
  there while MariaDB still accepts it. The script uses `CREATE USER IF NOT EXISTS` plus
  plain `GRANT`s, which both engines accept.

Logging into a **remote or shared** server works through `-DbHost` / `-DbPort`, but be
deliberate about it: the pipeline drops `tw_world`, `tw_char`, `tw_logon` and `tw_logs` on
whatever it connects to. The preflight prints the client, how it was found, and the
server's version, host and port for exactly this reason — read that line on an unfamiliar
machine.

On a remote server the service account is created as `'mangos'@'%'`, because the server
sees this machine arriving from its own address and never as `localhost`. Narrow it with
`-DbAccountHost "192.168.1.%"` when the network allows it.

## What a run does

| Step | |
|---|---|
| 00 | Variables, run lock, temporary MariaDB credential files, vcpkg discovery |
| 00b | **Preflight** — git, cmake, vcpkg, mysql (and mysqldump for `-SkipBotRegen`), MariaDB reachable, VS C++ toolset |
| 01 | Client data present + every DBC checked against `dbc_verifier.json` |
| 02 | `vcpkg install` for ACE and Boost |
| 03 | Clone or pull the source, update submodules |
| — | *(`-WithBots`)* sync `modules/mod-playerbots` + `modules/mod-dungeon-clear` from `-ModulesRepoUrl`; optional cherry-picks |
| — | *(`-SkipBotRegen`)* verified `mysqldump` of `tw_char` + `tw_logon` |
| 04 | Stop running servers, wipe generated server dirs, drop databases |
| 05 | `create_databases.sql`, then all 186 world files from `sql\base` |
| 06 | Create the `mangos` database user |
| — | *(`-SkipBotRegen`)* restore the dumps |
| 07 | `character_inventory_copy` honor hotfix table |
| 08 | CMake configure + Release build → `server_build.log` |
| 09 | Install, sort binaries into `bin\`/`tools\`, DLLs into `lib\`, configs into `etc\` |
| 10 | Rewrite paths in `mangosd.conf` |
| 11 | *(`-WithBots`)* import the playerbots module SQL |
| 12 | *(`-WithBots`)* scale the bot population down in `aiplayerbot.conf` |
| 13 | Insert the local realm into `tw_logon.realmlist` |
| 14 | Create `logs\`, `honor\`, `pdump\`, `lua_scripts\` |
| 15 | Generate the three launcher `.bat` files, refreshing stale ones |

Afterwards: `server\1.Start mysql.bat`, then `2.Realm server.bat`, then
`3.World server.bat`. Create your account from the mangosd console with `account create`.

`-DatabaseOnly` skips steps 01, 02, 03, 08, 09, 10, 12 and 15 outright, and the folder-wipe
half of step 04 (the database-drop half still runs) — everything that isn't a database
operation. Steps 00b, 05, 06, 07, 11, 13, 14 and the `-SkipBotRegen` backup/restore run
exactly as they would in a full build.

### Build flags it passes

Two of these are easy to get wrong by hand and are the reason a manual Windows build
often fails where Linux succeeds:

- `-DUSE_PCH=OFF -DUSE_PCH_OLD=OFF` — the `/FI` force-include fallback only runs when
  `USE_PCH_OLD` is off, and it defaults to **on** for MSVC.
- `-DBUILD_PLAYERBOTS=ON` alongside `-DMODULE_MOD_PLAYERBOTS=static` — the module's
  sources compile either way, but without `BUILD_PLAYERBOTS` it never receives its
  compile definitions or the `botpch.h` force-include.

## Safety behaviour

- **Single instance per machine.** The pipeline drops databases and wipes the server
  directory, so two overlapping runs would corrupt the result. A named mutex
  (`Global\TortoiseWoW-Testlab-Pipeline`, falling back to `Local\` when the account lacks
  the privilege to create a global object) refuses the second run with exit code 2. The
  kernel releases it the moment the owning process ends, so a run killed with Ctrl+C or
  Task Manager cannot lock the testlab out.
  Beside it, `pipeline_running.lock` records PID, start time, user and machine so you can
  see *who* is running; a file left behind by a killed run is recognised as stale and taken
  over automatically.
- **`-SkipBotRegen` verifies its own backup.** Step 05 imports `create_databases.sql`,
  which carries `DROP TABLE` for every table in `tw_char`, so the character data is
  genuinely dropped and restored rather than left alone. The dump is therefore checked for
  a non-trivial size and mysqldump's `-- Dump completed` trailer *before* anything
  destructive runs; if it looks wrong the pipeline stops with your data still intact.
- **No passwords on the command line.** Credentials go into temporary MariaDB option files
  (readable only by the current user, deleted on exit) rather than `-p<password>`
  arguments, which any local user can read out of the process list.
- **Uncommitted source changes are stashed, not discarded**, when `-applyPatches` needs a
  clean tree.
- **The DBC manifest is checked before it is trusted.** `dbc_verifier.json` describes the
  last officially released client and is not meant to change, so the script carries its
  expected fingerprint and refuses to run against a shipped copy that does not match.
  Without that, a truncated download or a manifest belonging to a different client build
  would just make step 01 verify the DBCs against the wrong hashes — passing when it should
  not, or blaming the client instead of the manifest. A **workspace** copy is a deliberate
  override and is only reported, not refused; if the client is ever updated, run the
  pipeline, take the hash it prints and put it in `$script:ExpectedDbcManifestChecksum`.
- **Launchers cannot go stale behind your back.** Each generated `.bat` carries a marker
  line with the version that wrote it and a checksum of its body, so step 15 can tell three
  situations apart: unchanged and current (skipped), written by an older pipeline and never
  edited since (refreshed, so a fix like the MariaDB working-directory one actually reaches
  a testlab that was set up months ago), and hand-edited or hand-made (left alone, with a
  warning). Edit them freely — an edited file is never overwritten.
- **Everything is checked before anything is destroyed.** Step 04 drops the databases and
  wipes the server directory, so every tool and service the run depends on is verified in
  the preflight first. A missing `cmake` used to surface in step 08 — four steps *after*
  the data was gone.
- **It tells you which database server it is about to wipe.** The client is resolved with
  the testlab's own portable server first, so a run cannot quietly drop `tw_world` /
  `tw_char` / `tw_logon` / `tw_logs` on a system-wide instance just because one happened to
  be on `PATH`. The preflight logs the client path, how it was found, and the server's
  version, hostname and port.
- **Waiting, not guessing, on startup.** `1.Start mysql.bat` launches mysqld
  asynchronously, so the preflight retries for `-DbStartupTimeoutSeconds` instead of
  failing on the first refused connection. A wrong password is *not* retried — waiting
  cannot fix it — so bad credentials still fail immediately, with the server's own message.
- **No absolute paths.** The workspace root is the single anchor, resolved to a full path
  up front, and every other location is a relative segment joined onto it. The testlab
  folder can be renamed, moved or sit on another drive with no edits. (The root is
  normalised deliberately: the script mixes PowerShell cmdlets with .NET file APIs, and
  .NET keeps its own current directory that `Push-Location` does not update — a relative
  root would make the two disagree, including for the `Remove-Item -Recurse` in step 04.) Recover them with `git -C tortoise-wow stash pop`.

## Known caveats

- **Database migrations.** The pipeline points `Database.AutoUpdate.Path` at the
  repository's `sql\database_updates` and leaves the rest to the server's auto-updater.
  `INSTALL-WINDOWS.md` §5 explains when that is not enough and how to apply the migrations
  by hand.
- **Full rebuild every run.** Step 08 deletes `build\` before configuring, so every run is
  a cold build of the whole tree. That is deliberate — it is what makes the result
  reproducible — but it costs the usual half hour or more.
