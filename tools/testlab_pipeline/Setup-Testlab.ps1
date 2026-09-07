<#
.SYNOPSIS
    Automated testlab pipeline for Tortoise-WoW and Playerbots compilation and deployment.
.DESCRIPTION
    This script automates the full deployment workflow, including client data verification,
    vcpkg dependency check, Git synchronization with submodules, CMake/MSBuild compilation,
    directory restructuring, configuration tuning, and automated database generation.

    Every parameter is optional and every default is the one this testlab uses, so a plain
    run needs no arguments at all. PowerShell renders the SYNTAX block above as one long
    line whatever the source looks like; the same parameters, grouped by what they do:

      Run mode
        -SkipBotRegen             keep accounts, characters and playerbot data
        -applyPatches             "hash1;hash2" to cherry-pick before building

      Where things live
        -WorkspaceRoot            testlab root            (default: this script's folder)
        -VcpkgDirectory           vcpkg                   (default: discovered)
        -VcpkgTriplet             vcpkg triplet           (default: x64-windows)

      What to build
        -RepoUrl                  repository              (default: Shyalya/tortoise-wow)
        -BranchName               branch                  (default: playerbots-integration-gh)
        -PatchRemoteUrl           remote for -applyPatches
        -ModulesRepoUrl           mod-playerbots / mod-dungeon-clear source
                                  (default: Shyalya/tortoise-wow)
        -ModulesBranch            (default: playerbots-integration-gh)

      Which database server
        -DbFlavor                 Auto | MariaDB | MySQL  (default: Auto)
        -MariaDbFolderName        portable server folder inside server\
        -MariaDbClientPath        explicit mariadb.exe / mysql.exe
        -DbHost  -DbPort          connection target       (default: the client's own)
        -DbStartupTimeoutSeconds  wait for it to start    (default: 30)

      Database identity
        -RootPassword             root password           (default: mangos)
        -DbUser  -DbPassword      the server's account    (default: mangos / mangos)
        -DbAccountHost            where that account may
                                  connect from            (default: from -DbHost)
        -DbPrefix                 names all four          (default: tw_)
        -WorldDatabaseName  -CharacterDatabaseName
        -LoginDatabaseName  -LogsDatabaseName
                                  override one name       (default: from the prefix)

      Realm and bots
        -RealmlistIPAddress  -RealmlistPort               (default: 127.0.0.1 / 8090)
        -MinRandomBots  -MaxRandomBots                    (default: 5 / 10)
        -RandomBotMinLevel  -RandomBotMaxLevel            (default: 1 / 20)
        -RandomBotAccountsCount                           (default: 10)

      Server logging
        -EnableSqlLog             every SQL query to file (default: off)
        -LogLevel                 0 Minimum | 1 Basic&Error
                                  | 2 Detail | 3 Full/Debug (default: 0)

      Database-only mode
        -DatabaseOnly             skip git/build/folders/config, touch only
                                  the databases (default: off)

      Modules
        -WithBots                 add the playerbot and dungeon-clear
                                  modules from -ModulesRepoUrl (default: off)

    Use "Get-Help .\Setup-Testlab.ps1 -Parameter <name>" for the detail on any one of them,
    or -Examples for the common combinations.
.PARAMETER SkipBotRegen
    Preserves existing accounts, GM characters and playerbot data. 'tw_char' and 'tw_logon'
    are dumped before the run and restored at the end; the dump is verified before anything
    destructive happens, so a failed backup stops the pipeline with the data still intact.
    Without it every database is dropped and rebuilt from scratch.
.PARAMETER DatabaseOnly
    Touches only the databases: no git update, no compilation, no folder cleanup, no
    config file changes. Everything that already exists - the server binaries, etc\,
    the launcher .bat files - is left exactly as it is. Use it to re-test a change to
    sql/base or a new migration against a genuine first boot, without waiting for a
    full rebuild. Combine with -SkipBotRegen to reset only 'tw_world' (tw_char and
    tw_logon are backed up and restored, untouched in effect) - the "tw_world
    First-Boot Reset" case; without -SkipBotRegen all four databases are dropped and
    rebuilt, same as a full run's database step. Start the server yourself afterwards
    (the existing launcher .bat files) - that boot is the actual test: an empty
    'migrations' table means the DB Auto-Updater applies every migration exactly as
    it would on a brand-new install.
.PARAMETER applyPatches
    Semicolon-separated list of things to cherry-pick onto the branch before building,
    fetched from -PatchRemoteUrl. Each entry is either a commit hash or the name of a branch
    or tag: "0ee0748;abc1234" applies two commits, "my-fix-branch" applies every commit that
    branch has and the checkout does not, oldest first. Uncommitted local changes are stashed
    first, never discarded, and a cherry-pick that conflicts stops the run before anything is
    built - which makes this the way to answer "does my pull request still apply", by pointing
    -RepoUrl at the repository it targets and naming the branch here. -PatchRemoteUrl accepts
    a local path as readily as a URL, so a branch that has not been pushed anywhere can be
    tested straight out of another checkout on the same machine.
.PARAMETER WithBots
    Adds mod-playerbots and mod-dungeon-clear on top of the engine: syncs both module
    directories from -ModulesRepoUrl, imports the playerbot SQL, tunes aiplayerbot.conf, and
    configures CMake with BUILD_PLAYERBOTS=ON and both modules static. Without it the run
    builds the engine alone, which is what the default -RepoUrl of Penqle carries - it has no
    modules in it at all, so a default run is a plain core build and validating a core change
    needs nothing else.
    Worth knowing before combining this with -DatabaseOnly: a database rebuilt without
    -WithBots has no ai_playerbot_* tables in it, and a server binary that WAS built with the
    modules dies on the missing tables at startup rather than reporting anything useful. The
    run warns when it sees that combination coming.
.PARAMETER WorkspaceRoot
    The testlab root: the folder holding 'server\' and the 'tortoise-wow\' checkout.
    Defaults to the folder this script sits in. Relative paths are resolved against your
    current directory. Everything else the pipeline touches is derived from this one path.
.PARAMETER VcpkgDirectory
    vcpkg installation providing ACE and Boost. Left empty it is discovered: VCPKG_ROOT,
    then vcpkg.exe on PATH, then conventional locations. Given explicitly it is used or the
    run fails - never silently replaced by a discovered one.
.PARAMETER VcpkgTriplet
    vcpkg triplet the dependencies are installed for. Defaults to x64-windows; the build
    itself is always -A x64.
.PARAMETER RootPassword
    Password for the database 'root' account, used for schema creation and imports.
.PARAMETER DbPassword
    Password for the 'mangos' service account this script creates and the server logs in
    with. Written to the database, not to any configuration file.
.PARAMETER DbUser
    Account the server logs in with. Created and granted in step 06, and written into the
    connection strings in mangosd.conf and realmd.conf.
.PARAMETER DbAccountHost
    Host part of the service account step 06 creates - the 'localhost' in
    'mangos'@'localhost'. Empty (default) derives it from -DbHost: 'localhost' for a local
    server, '%' for a remote one, because a remote server sees this machine arriving from
    its own address and never as localhost. Set it explicitly to narrow that down, e.g.
    -DbAccountHost "192.168.1.%".
.PARAMETER DbPrefix
    Prefix for the four database names, default "tw_". Change it to run several testlabs
    against one database server without them overwriting each other - -DbPrefix "lab2_"
    gives lab2_world, lab2_char, lab2_logon and lab2_logs. The schema is renamed on import
    and the server's connection strings are written to match.
.PARAMETER WorldDatabaseName
    Overrides the world database name. Empty (default) means "<prefix>world".
.PARAMETER CharacterDatabaseName
    Overrides the characters database name. Empty (default) means "<prefix>char".
.PARAMETER LoginDatabaseName
    Overrides the login/realm database name. Empty (default) means "<prefix>logon".
.PARAMETER LogsDatabaseName
    Overrides the logs database name. Empty (default) means "<prefix>logs".
.PARAMETER DbFlavor
    Which engine to look for: Auto (default), MariaDB or MySQL. Only narrows discovery -
    useful on a machine that has both installed.
.PARAMETER MariaDbFolderName
    Name of the portable MariaDB directory inside 'server\', tried before PATH and the
    conventional install locations.
.PARAMETER MariaDbClientPath
    Explicit path to mariadb.exe or mysql.exe. Given, it is used or the run fails, because
    connecting to a different server than intended means dropping databases on the wrong
    instance.
.PARAMETER DbHost
    Host to connect to. Empty (default) means the client's own default, which is what the
    bundled portable server wants.
.PARAMETER DbPort
    Port to connect to. 0 (default) means the client's own default.
.PARAMETER DbStartupTimeoutSeconds
    How long the preflight waits for the server to start answering, in seconds. Default 30.
    'server\1.Start mysql.bat' launches mysqld asynchronously, so a run started right after
    it needs a moment. A wrong password is never retried.
.PARAMETER RepoUrl
    Source repository to clone or pull.
.PARAMETER BranchName
    Branch to build. Point it at a topic branch to test one without editing anything.
.PARAMETER PatchRemoteUrl
    Remote the -applyPatches commits are fetched from.
.PARAMETER ModulesRepoUrl
    Repository the mod-playerbots and mod-dungeon-clear module directories are synced from,
    independently of -RepoUrl. Part of the core migration that moves engine code to Penqle
    and leaves Shyalya holding only these two modules: -RepoUrl points at the engine,
    -ModulesRepoUrl always points at wherever the modules currently live. The whole module
    directory is mirrored, sql\ included, so nothing extra is needed to carry a module's own
    database content across.
.PARAMETER ModulesBranch
    Branch -ModulesRepoUrl is read from.
.PARAMETER RealmlistIPAddress
    Address written into tw_logon.realmlist, and the one your client's realmlist.wtf has to
    point at.
.PARAMETER RealmlistPort
    Port written into tw_logon.realmlist. Must match WorldServerPort in mangosd.conf, which
    ships as 8090; a mismatch lets login succeed and then hangs the client before character
    selection.
.PARAMETER MinRandomBots
    Lower bound of the playerbot population written into aiplayerbot.conf.
.PARAMETER MaxRandomBots
    Upper bound of the playerbot population. The shipped template asks for a thousand, which
    turns the first start into a long wait for no benefit.
.PARAMETER RandomBotMinLevel
    Lowest level random bots are generated at.
.PARAMETER RandomBotMaxLevel
    Highest level random bots are generated at.
.PARAMETER RandomBotAccountsCount
    Number of bot accounts to create.
.PARAMETER EnableSqlLog
    Writes every SQL statement mangosd sends to a log file (LogSQL in mangosd.conf). Off by
    default: at LogSQL = 1 it is 94% of a normal run's console log, most of it the
    per-connection 'SET NAMES' / 'SET CHARACTER SET' every pooled database connection issues
    on open - not an error, just noise that buries the handful of lines that matter. Turn it
    on when you are chasing a specific query, e.g. a deadlock.
.PARAMETER LogLevel
    Console/log verbosity for mangosd and realmd: 0 Minimum, 1 Basic & Error, 2 Detail,
    3 Full/Debug. Defaults to 0; the shipped templates default to 1. This does not affect
    the DB content warnings step 01 and mangosd's table loader print on startup (missing
    creature_movement paths and the like) - those come from the world database's own
    content, not from this setting, and stay visible at every level.
.EXAMPLE
    .\Run-Testlab.bat
    The normal run: builds everything and rebuilds every database from scratch. Use the .bat
    rather than the .ps1 so no execution-policy change is needed.
.EXAMPLE
    .\Run-Testlab.bat -SkipBotRegen
    Rebuilds the server but keeps your accounts, GM characters and playerbot data.
.EXAMPLE
    .\Run-Testlab.bat -RepoUrl https://github.com/me/tortoise-wow.git -BranchName my-fix
    Builds a fork or topic branch without editing the script.
.EXAMPLE
    .\Run-Testlab.bat -WorkspaceRoot C:\WOW\testlab -VcpkgDirectory D:\vcpkg
    Runs the script straight out of the repository against a testlab folder elsewhere.
.EXAMPLE
    .\Run-Testlab.bat -DbFlavor MySQL -DbPort 3307 -RootPassword "hunter2"
    Uses an installed MySQL on a non-default port instead of the bundled portable MariaDB.
.EXAMPLE
    .\Run-Testlab.bat -applyPatches "0ee0748;abc1234" -SkipBotRegen
    Cherry-picks two hotfixes onto the branch, then rebuilds while preserving character data.
.EXAMPLE
    .\Run-Testlab.bat -WorkspaceRoot C:\WOW\lab2 -DbPrefix "lab2_" -RealmlistPort 8091
    A second, independent testlab on the same machine and the same database server.
.NOTES
    Windows only (PowerShell 5.1+, Visual Studio 2022, CMake). See README.md next to this
    script for the folder layout it expects and what you have to supply yourself.

    Everything printed is also written to 'pipeline_console.log' in the workspace root, and
    the compiler output additionally to 'server_build.log'. No shell redirection needed.

    A wrap-point gotcha in this comment block, for whoever next reformats a paragraph here:
    Get-Help's comment-based-help parser treats any line that starts with a bare period
    (after leading whitespace) as a new section keyword, whether or not it recognises the
    word after the dot. Wrapping -DatabaseOnly's description once put ".bat files ..." at
    the start of a line, and every parameter after it in Get-Help silently vanished - the
    script still ran fine, only its own documentation broke. Keep a non-period word first
    on every wrapped line.
.LINK
    https://github.com/Shyalya/tortoise-wow
.LINK
    https://github.com/Shyalya/tortoise-wow/blob/playerbots-integration-gh/INSTALL-WINDOWS.md
.LINK
    https://github.com/Shyalya/tortoise-wow/blob/playerbots-integration-gh/INSTALL-LINUX.md
#>
[CmdletBinding(PositionalBinding = $false)]
param (
    # PositionalBinding=$false above: with this many parameters, positional binding is a
    # liability rather than a convenience. It also shortens every entry in the generated
    # SYNTAX block from "[[-Name] <String>]" to "[-Name <String>]" - and without it a stray
    # unnamed argument would silently bind to whichever parameter sits in that position,
    # which here is -applyPatches, the one that triggers a cherry-pick.
    #
    # (This comment lives inside param() deliberately: line comments left between the help
    # block and the parameters are absorbed into the last help section - they surfaced
    # under RELATED LINKS.)

    # ---- run mode ----------------------------------------------------------------------

    # Switch to bypass character database drop, playerbot data import, and configuration wipe
    [switch]$SkipBotRegen,

	# Dynamic string sequence containing commit hashes separated by semicolons (e.g. "0ee0748;abc1234")
    [string]$applyPatches,

    # ---- where things live -------------------------------------------------------------

    # Testlab root: the folder holding 'server\' and the 'tortoise-wow\' checkout. Defaults to
    # the directory this script sits in, which is the layout you get by copying the script out
    # of the repository into an empty working folder. Point it elsewhere to run the script
    # straight out of a checkout: -WorkspaceRoot C:\WOW\testlab
    # Deliberately defaulted in the body rather than here. $PSScriptRoot is empty while an
    # advanced script's parameter defaults are being evaluated - [CmdletBinding()] above is
    # what makes this script advanced - even though it holds the right path everywhere
    # else. Written as "= $PSScriptRoot" this silently became "", and the run died in
    # Start-Transcript before printing anything useful.
    [string]$WorkspaceRoot = "",

    # vcpkg installation providing ACE and Boost. Left empty it is discovered: VCPKG_ROOT,
    # then vcpkg.exe on PATH, then a few conventional locations. Give it explicitly only
    # when you have several and want a particular one.
    [string]$VcpkgDirectory = "",

    # vcpkg triplet the dependencies are installed for. The build itself is -A x64.
    [string]$VcpkgTriplet = "x64-windows",

    # ---- what to build -----------------------------------------------------------------

    # Source to build - the engine. Penqle holds the core; the playerbot and dungeon-clear
    # modules live in Shyalya and are fetched separately, only under -WithBots. Point these
    # at a fork or a topic branch to test one without touching the script:
    # -RepoUrl https://github.com/me/tortoise-wow.git -BranchName my-fix
    [string]$RepoUrl    = "https://github.com/Penqle/tortoise-wow.git",
    [string]$BranchName = "main",

    # Remote the -applyPatches commits are fetched from
    [string]$PatchRemoteUrl = "https://github.com/Penqle/tortoise-wow.git",

    # Where the mod-playerbots and mod-dungeon-clear module directories come from - kept
    # entirely separate from -RepoUrl/-BranchName above. The core migration this pair
    # supports moves core code to Penqle and leaves Shyalya holding only these two modules;
    # until -RepoUrl itself points at Penqle, syncing from here duplicates content -RepoUrl
    # already carries, which is harmless, just a redundant clone.
    [string]$ModulesRepoUrl = "https://github.com/Shyalya/tortoise-wow.git",
    [string]$ModulesBranch  = "playerbots-integration-gh",

    # ---- which database server ---------------------------------------------------------

    # Which database engine to look for. Auto takes the first client it finds in the search
    # order; MariaDB or MySQL restricts discovery to that engine's client names, for a
    # machine that has both installed.
    [ValidateSet("Auto", "MariaDB", "MySQL")]
    [string]$DbFlavor = "Auto",

    # Name of the portable MariaDB directory inside server\. Used first when present; if it
    # is not there the client is looked for on PATH and in the usual install locations.
    [string]$MariaDbFolderName = "mariadb-10.3.39-winx64",

    # Explicit path to the client (mariadb.exe or mysql.exe). Given, it is used or the run
    # fails - never silently replaced by a discovered one, because connecting to a different
    # server than intended means dropping databases on the wrong instance.
    [string]$MariaDbClientPath = "",

    # Connection target. Both empty/0 means "whatever the client defaults to", which is what
    # the bundled portable server wants; set them for a non-default port or a remote host.
    [string]$DbHost = "",
    [int]$DbPort    = 0,

    # How long the preflight waits for the server to start answering. 1.Start mysql.bat
    # launches mysqld asynchronously, so a run kicked off right after it needs a moment.
    [int]$DbStartupTimeoutSeconds = 30,

    # ---- database identity -------------------------------------------------------------

    # Credentials. Defaults match the portable MariaDB this testlab ships with; override
    # them rather than editing the script body.
    [string]$RootPassword = "mangos",
    [string]$DbPassword   = "mangos",

    # Account the server logs in with. Created and granted by step 06.
    [string]$DbUser = "mangos",

    # Host part of that account. Empty derives it from -DbHost; see step 06.
    [string]$DbAccountHost = "",

    # Prefix for the four database names. Change it to run several testlabs against one
    # server without them overwriting each other: -DbPrefix "lab2_" gives lab2_world,
    # lab2_char, lab2_logon and lab2_logs.
    [string]$DbPrefix = "tw_",

    # Individual database names. Empty means "<prefix>world" and so on; set one only to
    # break out of the prefix scheme for a single database.
    [string]$WorldDatabaseName     = "",
    [string]$CharacterDatabaseName = "",
    [string]$LoginDatabaseName     = "",
    [string]$LogsDatabaseName      = "",

    # ---- realm and bots ----------------------------------------------------------------

    # Realm registered in the login database's realmlist. The port has to match
    # WorldServerPort in mangosd.conf, which ships as 8090.
    [string]$RealmlistIPAddress = "127.0.0.1",
    [int]$RealmlistPort = 8090,

    # Playerbot population for the testlab. The shipped template asks for a thousand bots,
    # which turns the first start into a long wait for no benefit.
    [int]$MinRandomBots          = 5,
    [int]$MaxRandomBots          = 10,
    [int]$RandomBotMinLevel      = 1,
    [int]$RandomBotMaxLevel      = 20,
    [int]$RandomBotAccountsCount = 10,

    # Off by default - see the parameter help for why. -LogLevel matches what the shipped
    # config templates document as "0 = Minimum" and is intentionally lower than their own
    # default of 1, because a testlab is rebuilt often and a quiet log makes that faster to
    # read.
    [switch]$EnableSqlLog,
    [int]$LogLevel = 0,

    # Orthogonal to -SkipBotRegen, not a replacement for it: this one decides whether git,
    # the compiler, the server folders and the config files are touched at all; SkipBotRegen
    # (already respected by every database step below, unchanged) decides which databases
    # survive the run. Combined, they are the "tw_world First-Boot Reset" case.
    [switch]$DatabaseOnly,

    # Adds mod-playerbots and mod-dungeon-clear on top of the engine. Off by default because
    # the default -RepoUrl is Penqle, which carries no modules at all; see the parameter help.
    [switch]$WithBots
)

# StrictMode turns a typo'd or never-assigned variable into a hard error instead of an
# empty string. Without it, '$NewDumpPDirSetting' (a typo for $NewPDumpDirSetting) and an
# undefined $ElunaScriptPath silently rewrote mangosd.conf with a blank PDumpDir and an
# empty Eluna.ScriptPath - the pipeline reported success and the server lost both settings.
Set-StrictMode -Version Latest

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# The -WorkspaceRoot default, applied here because it cannot be applied in param(): see the
# comment on that parameter. $PSScriptRoot is correct from this point on.
if ([string]::IsNullOrWhiteSpace($WorkspaceRoot)) { $WorkspaceRoot = $PSScriptRoot }

# Checked here, not beside the rest of the path handling further down, because
# Start-Transcript below CREATES the directory it is pointed at. A mistyped -WorkspaceRoot
# was therefore made real on the spot, the existence check further down always passed, and
# the run carried on to fail at whatever it could not find inside the new empty folder -
# having left a stray directory and a pipeline_console.log behind.
#
# Stop-Pipeline is not defined yet at this point in the file, and nothing has been acquired
# that would need releasing, so this exits directly.
if (-not [string]::IsNullOrWhiteSpace($WorkspaceRoot) -and
    -not (Test-Path -LiteralPath $WorkspaceRoot -PathType Container)) {
    Write-Error "Workspace root does not exist (or is not a directory): $WorkspaceRoot"
    exit 2
}

# Credential files are created in step 00 and removed by Stop-Pipeline / the final cleanup.
# Declared up front so the cleanup helper can always test them under StrictMode.
$script:RootDefaultsFile = $null
$script:DbDefaultsFile   = $null

# Run lock. $LockOwned stays false until THIS run creates the file, so aborting because
# somebody else's run holds the lock can never delete their lock on the way out.
$script:LockFile  = $null
$script:LockOwned = $false

# The singleton handle itself. A named mutex is the authoritative guard - see
# Assert-SingleInstance - and the lock file beside it only carries the human-readable
# "who and since when".
$script:SingletonMutex = $null

# Start recording everything that appears in the PowerShell console window
Start-Transcript -Path (Join-Path $WorkspaceRoot "pipeline_console.log") -Append -ErrorAction SilentlyContinue


# ==============================================================================
# FUNCTIONS DEFINITION
# ==============================================================================
function Write-PipelineHeader {
    param (
        [string]$StepName
    )
    $Line = "=" * 80
    Write-Host ""
    Write-Host $Line -ForegroundColor Cyan
    Write-Host ">>> PIPELINE STEP $($StepName.ToUpper())" -ForegroundColor Yellow
    Write-Host $Line -ForegroundColor Cyan
    Write-Host ""
}

# Deletes the temporary MariaDB credential files. Safe to call more than once.
function Remove-PipelineCredentialFiles {
    foreach ($CredentialFile in @($script:RootDefaultsFile, $script:DbDefaultsFile)) {
        if ($CredentialFile -and (Test-Path $CredentialFile)) {
            Remove-Item -Path $CredentialFile -Force -ErrorAction SilentlyContinue
        }
    }
}

# Releases the singleton mutex. Safe to call when we never acquired one.
function Remove-PipelineSingleton {
    if ($script:SingletonMutex) {
        try { [void]$script:SingletonMutex.ReleaseMutex() } catch { }
        $script:SingletonMutex.Dispose()
        $script:SingletonMutex = $null
    }
}

# Enforces one pipeline run per machine.
#
# The lock file below records who is running and since when, but it cannot be the guard on
# its own: a run killed with Ctrl+C or Task Manager leaves the file behind, and deciding
# whether it is stale means guessing from a PID that Windows may already have recycled.
# A named mutex has no such problem - the kernel drops it the instant the owning process
# ends, however it ends.
#
# "Global\" is the machine-wide namespace, so a run started from another session (a second
# console, RDP, a scheduled task) is seen as well. Creating an object there needs
# SeCreateGlobalPrivilege, which an ordinary non-elevated user does not have, so a failure
# falls back to the per-session "Local\" namespace rather than aborting: the lock file
# still covers the cross-session case, just with the weaker stale-PID heuristic.
# Answers "does a mutex of this name already exist?" without needing full access to it.
#
# Assert-SingleInstance needs this to tell two very different causes of the same
# UnauthorizedAccessException apart. Opening for Synchronize only is the weakest right
# there is, so it succeeds against objects the constructor cannot touch; and if even that
# is denied, the object demonstrably exists, which is the answer we were after.
function Test-NamedMutexExists {
    param (
        [Parameter(Mandatory = $true)][string]$Name
    )

    try {
        $Existing = [System.Threading.Mutex]::OpenExisting($Name, [System.Security.AccessControl.MutexRights]::Synchronize)
        $Existing.Dispose()
        return $true
    } catch [System.Threading.WaitHandleCannotBeOpenedException] {
        return $false
    } catch [System.UnauthorizedAccessException] {
        return $true
    } catch {
        return $false
    }
}

function Assert-SingleInstance {
    $CreatedNew = $false

    foreach ($MutexName in @("Global\TortoiseWoW-Testlab-Pipeline", "Local\TortoiseWoW-Testlab-Pipeline")) {
        try {
            $script:SingletonMutex = New-Object System.Threading.Mutex($true, $MutexName, [ref]$CreatedNew)
            break
        } catch [System.UnauthorizedAccessException] {
            # The constructor asks for MUTEX_ALL_ACCESS, so this means one of two opposite
            # things, and falling back blindly gets one of them badly wrong:
            #
            #   the name does not exist  -> no SeCreateGlobalPrivilege. Local\ is the right
            #                               answer, and the lock file still covers the
            #                               cross-session case.
            #   the name DOES exist      -> another run owns it and its object is closed to
            #                               us (it is elevated and we are not, or it belongs
            #                               to another user). Falling back to Local\ would
            #                               create a DIFFERENT kernel object, report
            #                               CreatedNew, and run a second pipeline against
            #                               the same databases - and its temp-file sweep
            #                               would delete the live run's credential files on
            #                               the way past.
            if (Test-NamedMutexExists -Name $MutexName) {
                $script:SingletonMutex = $null
                Stop-Pipeline -Message ("Another pipeline run already holds '$MutexName', and this session may not " +
                                        "open it - it was most likely started elevated, or by another user. " +
                                        "Wait for it to finish, or start this run the same way.") -ExitCode 2
            }

            $script:SingletonMutex = $null
        } catch {
            $script:SingletonMutex = $null
        }
    }

    if (-not $script:SingletonMutex) {
        Stop-Pipeline -Message "Could not create the singleton mutex - refusing to run rather than risk a second concurrent pipeline." -ExitCode 2
    }

    if (-not $CreatedNew) {
        # Somebody else owns it. Drop our handle without releasing a mutex we never owned.
        $script:SingletonMutex.Dispose()
        $script:SingletonMutex = $null
        Stop-Pipeline -Message ("Another pipeline run is already in progress on this machine. " +
                                "Only one run may execute at a time - it drops databases and wipes the server directory. " +
                                "Wait for it to finish, then start again.") -ExitCode 2
    }
}

# Removes this run's lock file - but only if this run is the one that created it.
function Remove-PipelineLock {
    if ($script:LockOwned -and $script:LockFile -and (Test-Path $script:LockFile)) {
        Remove-Item -Path $script:LockFile -Force -ErrorAction SilentlyContinue
    }
    $script:LockOwned = $false
}

# Single exit path for the whole pipeline: report, release the lock, drop the credential
# files, close the transcript, then leave with a meaningful exit code.
function Stop-Pipeline {
    param (
        [string]$Message,
        [int]$ExitCode = 1
    )
    if ($Message) { Write-Error $Message }
    Remove-PipelineLock
    Remove-PipelineSingleton
    Remove-PipelineCredentialFiles
    try { Stop-Transcript | Out-Null } catch { }
    exit $ExitCode
}

# Refuses to start a second run on top of a live one.
#
# The pipeline drops databases and wipes the server directory; two of them interleaved
# would corrupt the result in ways that are painful to diagnose. A lock left behind by a
# crashed or killed run is detected and taken over, so a stale file never blocks the
# testlab permanently.
function Assert-NoConcurrentRun {
    if (-not (Test-Path $script:LockFile)) { return }

    # An unreadable lock is not a stale lock. ReadAllLines throwing - the file held open by
    # an editor, an AV scanner or a backup agent, or ACL-denied because the owning run
    # belongs to another user - is not script-terminating in PowerShell, so $LockData was
    # simply left empty. That read as "PID 0, never started", and the live run's lock was
    # announced as stale, deleted, and taken over.
    $LockLines = @()
    try {
        $LockLines = [System.IO.File]::ReadAllLines($script:LockFile)
    } catch {
        Stop-Pipeline -Message ("A lock file exists but cannot be read: $($script:LockFile)`n" +
                                "  $($_.Exception.Message)`n" +
                                "Refusing to assume it is stale. Close whatever is holding it, or delete it if you " +
                                "are certain no pipeline is running.") -ExitCode 2
    }

    $LockData = @{}
    foreach ($Line in $LockLines) {
        if ($Line -match '^\s*([^=]+?)\s*=\s*(.*)$') { $LockData[$Matches[1]] = $Matches[2] }
    }

    $OwnerStarted = if ($LockData.ContainsKey('Started')) { $LockData['Started'] } else { 'unknown time' }

    # Same reasoning for a lock that carries no PID, which also covers one caught
    # half-written: File.WriteAllText holds FileShare.Read, so a concurrent read is allowed
    # and can see the file before the Pid= line has landed.
    if (-not $LockData.ContainsKey('Pid')) {
        Stop-Pipeline -Message ("A lock file exists but names no PID: $($script:LockFile)`n" +
                                "It may belong to a run that is still writing it. Refusing to assume it is stale; " +
                                "delete it if you are certain no pipeline is running.") -ExitCode 2
    }

    # A lock written on another machine - a workspace on a network share - says nothing
    # about any process here, so the PID below would be meaningless.
    $OwnerMachine = if ($LockData.ContainsKey('Machine')) { $LockData['Machine'] } else { "" }
    if ($OwnerMachine -and $OwnerMachine -ne $env:COMPUTERNAME) {
        Stop-Pipeline -Message ("The lock file was written on '$OwnerMachine', not on this machine, so its PID " +
                                "means nothing here: $($script:LockFile)`n" +
                                "Wait for that run, or delete the file if you are certain it is gone.") -ExitCode 2
    }

    $OwnerPid = 0
    [void][int]::TryParse($LockData['Pid'], [ref]$OwnerPid)

    $OwnerAlive = $false
    if ($OwnerPid -gt 0) {
        $OwnerProcess = Get-Process -Id $OwnerPid -ErrorAction SilentlyContinue

        # Windows recycles PIDs. "Is it a PowerShell host?" on its own does not help,
        # because on a machine where this pipeline is run the most likely program to inherit
        # a PID is another PowerShell window: a run killed with Ctrl+C, followed by opening
        # a new console that happened to get the same PID, blocked every later run forever
        # with "Wait for it to finish" until the file was deleted by hand.
        #
        # The lock is written moments after its owner starts, so a process that began after
        # the lock's own timestamp cannot be the run that wrote it.
        if ($OwnerProcess -and @('powershell', 'pwsh') -contains $OwnerProcess.ProcessName) {
            $OwnerAlive = $true

            $OwnerStartedAt = [datetime]::MinValue
            $ParsedStart = [datetime]::TryParseExact($OwnerStarted, 'yyyy-MM-dd HH:mm:ss',
                                                     [System.Globalization.CultureInfo]::InvariantCulture,
                                                     [System.Globalization.DateTimeStyles]::None,
                                                     [ref]$OwnerStartedAt)
            if ($ParsedStart) {
                try {
                    # A few seconds of slack: the timestamp has one-second resolution and is
                    # taken slightly after the process itself started.
                    if ($OwnerProcess.StartTime -gt $OwnerStartedAt.AddSeconds(5)) { $OwnerAlive = $false }
                } catch {
                    # StartTime is not readable for a process owned by another user. Keep
                    # the cautious answer rather than taking over a possibly live run.
                }
            }
        }
    }

    if ($OwnerAlive) {
        Stop-Pipeline -Message ("Another pipeline run is already in progress (PID $OwnerPid, started $OwnerStarted). " +
                                "Wait for it to finish. If you are certain it is gone, delete $($script:LockFile) and run again.") `
                      -ExitCode 2
    }

    Write-Warning "Stale lock found from PID $OwnerPid (started $OwnerStarted) - that run never finished cleanly. Taking over."
    Remove-Item -Path $script:LockFile -Force -ErrorAction SilentlyContinue
}

# Records that a run is underway, for the next run and for anyone looking at the folder.
function New-PipelineLock {
    $LockContent = @(
        "Pid=$PID"
        "Started=$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
        "User=$env:USERNAME"
        "Machine=$env:COMPUTERNAME"
        "SkipBotRegen=$SkipBotRegen"
        "WorkspaceRoot=$WorkspaceRoot"
        "Script=$PSCommandPath"
    ) -join "`r`n"

    # Every write in this script is checked, because an exception thrown by a .NET method
    # is NOT script-terminating in PowerShell: the statement is abandoned, the error is
    # printed, and the next line runs as if nothing happened. Unchecked, a failed write
    # here was followed straight by $script:LockOwned = $true and "Single-instance lock
    # acquired" - this run then advertised ownership of a file that does not exist, and on
    # exit Remove-PipelineLock would delete whatever lock file had appeared at that path in
    # the meantime, which may well be another run's.
    try {
        [System.IO.File]::WriteAllText($script:LockFile, ($LockContent + "`r`n"), (New-Object System.Text.UTF8Encoding($false)))
    } catch {
        Stop-Pipeline -Message ("Could not write the run lock file at $($script:LockFile)`n" +
                                "  $($_.Exception.Message)`n" +
                                "The workspace has to be writable for the pipeline to guard against a second run.")
    }

    $script:LockOwned = $true
}

# Runs a native command so that its output reaches the transcript as well as the console.
#
# Start-Transcript only records what travels through PowerShell's own streams. A native
# command left to write straight to the console - "git pull", "cmake -B ..." - and anything
# launched through Start-Process bypass it completely, which is why pipeline_console.log
# used to contain the pipeline's own messages and almost nothing from the tools it drives.
# Verified: of Write-Host, a direct native call, a Start-Process child and a piped call,
# only the first and last were captured.
#
# Routing the output through ForEach-Object puts it back in the pipeline, so the transcript
# sees it and the operator still watches it live. 2>&1 folds stderr in - PowerShell 5.1
# wraps those lines in ErrorRecords, hence the explicit ToString().
function Invoke-NativeLogged {
    param (
        [Parameter(Mandatory = $true)][string]$Executable,
        [string[]]$Arguments = @()
    )

    & $Executable @Arguments 2>&1 | ForEach-Object { Write-Host $_.ToString() }
}

# Aborts the pipeline when the last native command reported a failure. Native tools
# (git, cmake, mysql) do NOT raise PowerShell errors - without this check the pipeline
# happily continues on a failed clone or a failed CMake configure and reports success.
function Assert-LastExitCode {
    param (
        [string]$Message
    )
    if ($LASTEXITCODE -ne 0) {
        Stop-Pipeline -Message "$Message (exit code $LASTEXITCODE)" -ExitCode $LASTEXITCODE
    }
}

# Quotes and escapes one value for a MariaDB option file.
#
# The option-file parser is not a plain key=value reader. In an unquoted value it truncates
# at the first '#' - anywhere in the line, not just at the start - and it expands backslash
# escape sequences. Both are silent: a root password of 'ab#cd' was read as 'ab' and
# 'pa\ts' as 'pa<TAB>s', the client answered "Access denied", and Wait-ForMariaDb blamed
# -RootPassword, which was the one thing that was correct.
#
# Verified against the bundled 10.3 client with --print-defaults: quoted this way, '#',
# '\', '"', ';', "'", '$', spaces and a leading '#' all arrive exactly as written.
function ConvertTo-OptionFileValue {
    param (
        [Parameter(Mandatory = $true)][AllowEmptyString()][string]$Value
    )

    return '"' + ($Value -replace '\\', '\\' -replace '"', '\"') + '"'
}

# Writes a MariaDB option file holding the credentials, so no password is ever passed on a
# command line where any local user can read it out of the process list.
# The file is UTF8 *without* BOM - a BOM makes MariaDB's option parser reject the file.
function New-MySqlDefaultsFile {
    param (
        [Parameter(Mandatory = $true)][string]$User,
        [Parameter(Mandatory = $true)][string]$Password
    )

    $CredentialPath = Join-Path $env:TEMP ("tw_pipeline_{0}_{1}.cnf" -f $User, [guid]::NewGuid().ToString('N'))

    # host/port are written only when asked for. Emitting host=localhost unconditionally is
    # not a no-op on Windows - it can move the client between TCP and a named pipe - and the
    # bundled portable server is happiest with the client's own defaults.
    $Content = "[client]`r`nuser=$(ConvertTo-OptionFileValue $User)`r`npassword=$(ConvertTo-OptionFileValue $Password)`r`n"
    if (-not [string]::IsNullOrWhiteSpace($DbHost)) { $Content += "host=$(ConvertTo-OptionFileValue $DbHost)`r`n" }
    if ($DbPort -gt 0)                              { $Content += "port=$DbPort`r`n" }
    # Checked, for the reason spelled out in New-PipelineLock: nothing would fail here, the
    # path would be returned as if it held credentials, and every client call afterwards
    # would report "Could not open required defaults file" instead of the real cause.
    try {
        [System.IO.File]::WriteAllText($CredentialPath, $Content, (New-Object System.Text.UTF8Encoding($false)))
    } catch {
        Stop-Pipeline -Message ("Could not write the temporary credential file at $CredentialPath`n" +
                                "  $($_.Exception.Message)")
    }

    # The file holds a plaintext credential: strip inherited permissions and grant the
    # current user only.
    try {
        $Acl = Get-Acl -Path $CredentialPath
        $Acl.SetAccessRuleProtection($true, $false)
        $Rule = New-Object System.Security.AccessControl.FileSystemAccessRule(
            [System.Security.Principal.WindowsIdentity]::GetCurrent().Name, 'FullControl', 'Allow')
        $Acl.SetAccessRule($Rule)
        Set-Acl -Path $CredentialPath -AclObject $Acl
    } catch {
        Write-Warning "Could not tighten permissions on the temporary credential file: $_"
    }

    return $CredentialPath
}

# Runs a single SQL statement block.
function Invoke-MySqlQuery {
    param (
        [Parameter(Mandatory = $true)][string]$Query,
        [string]$Database,
        [string]$DefaultsFile,
        [string]$FailureMessage = "MariaDB query failed",
        [switch]$AllowFailure
    )

    if (-not $DefaultsFile) { $DefaultsFile = $script:RootDefaultsFile }

    $Arguments = @("--defaults-extra-file=$DefaultsFile", "--default-character-set=utf8mb4", "-e", $Query)
    if ($Database) { $Arguments += $Database }

    Invoke-NativeLogged -Executable $MariaDBPath -Arguments $Arguments
    if (-not $AllowFailure) { Assert-LastExitCode -Message $FailureMessage }
}

# Imports a .sql file.
#
# Two things this deliberately does NOT do:
#   1. It does not pipe the file through PowerShell (`Get-Content file | mysql`). That
#      marshals every single line into the child process one at a time and is orders of
#      magnitude slower on the multi-megabyte world dumps.
#   2. It does not hand the raw file to MariaDB either: 185 files under sql/base carry the
#      MariaDB 11 "enable the sandbox mode" preamble, which the bundled 10.3 client cannot
#      parse. The file is streamed into a filtered temporary copy first, which also
#      normalises the encoding to UTF8 without BOM.
function Invoke-MySqlFile {
    param (
        [Parameter(Mandatory = $true)][string]$Path,
        [string]$Database,
        [string]$DefaultsFile,
        [string]$FailureMessage = "MariaDB import failed",
        [switch]$AllowFailure,

        # Rewrites backticked database identifiers on the way through - used for
        # create_databases.sql, whose CREATE DATABASE and USE statements name the stock
        # tw_* databases directly.
        [System.Collections.IDictionary]$RenameDatabases
    )

    if (-not $DefaultsFile) { $DefaultsFile = $script:RootDefaultsFile }

    $FilteredPath = Join-Path $env:TEMP ("tw_import_{0}.sql" -f [guid]::NewGuid().ToString('N'))
    $Writer = New-Object System.IO.StreamWriter($FilteredPath, $false, (New-Object System.Text.UTF8Encoding($false)))
    try {
        foreach ($Line in [System.IO.File]::ReadLines($Path)) {
            if ($Line -match 'sandbox mode') { continue }

            if ($RenameDatabases) {
                # Only the backticked form is touched. Every CREATE DATABASE and USE in
                # create_databases.sql is backticked; the one bare occurrence is a comment
                # header, which is left alone rather than risking a substring match inside
                # table data.
                foreach ($StockName in $RenameDatabases.Keys) {
                    $NewName = $RenameDatabases[$StockName]
                    if ($NewName -ne $StockName) {
                        $Line = $Line.Replace("``$StockName``", "``$NewName``")
                    }
                }
            }

            $Writer.WriteLine($Line)
        }
    } finally {
        $Writer.Dispose()
    }

    # The path is quoted by hand. Start-Process joins -ArgumentList with spaces and does NOT
    # quote an element that contains one, so a %TEMP% under a profile like
    # "C:\Users\Jan Novak\AppData\Local\Temp" split into --defaults-extra-file=C:\Users\Jan
    # plus a stray positional argument: the client read no credentials and every import
    # failed with "Access denied" - after step 04 had already dropped all four databases.
    # Test-MariaDbConnection quotes correctly, so the preflight could not catch it.
    $Arguments = @("--defaults-extra-file=`"$DefaultsFile`"", "--default-character-set=utf8mb4")
    if ($Database) { $Arguments += "`"$Database`"" }

    # Redirecting stdin is the one thing the call operator cannot do, so this stays on
    # Start-Process - but its output would then bypass the transcript entirely, so stdout
    # and stderr are captured to files and replayed through Write-Host. That matters: a
    # failed import's only explanation is the message the client printed.
    $OutFile = Join-Path $env:TEMP ("tw_import_out_{0}.txt" -f [guid]::NewGuid().ToString('N'))
    $ErrFile = Join-Path $env:TEMP ("tw_import_err_{0}.txt" -f [guid]::NewGuid().ToString('N'))

    try {
        $ImportProcess = Start-Process -FilePath $MariaDBPath `
                                       -ArgumentList $Arguments `
                                       -RedirectStandardInput $FilteredPath `
                                       -RedirectStandardOutput $OutFile `
                                       -RedirectStandardError $ErrFile `
                                       -NoNewWindow `
                                       -PassThru `
                                       -Wait

        foreach ($CapturedFile in @($OutFile, $ErrFile)) {
            if (Test-Path -LiteralPath $CapturedFile) {
                Get-Content -Path $CapturedFile -ErrorAction SilentlyContinue |
                    Where-Object { -not [string]::IsNullOrWhiteSpace($_) } |
                    ForEach-Object { Write-Host $_ }
            }
        }

        if ($ImportProcess.ExitCode -ne 0 -and -not $AllowFailure) {
            Stop-Pipeline -Message "$FailureMessage : $Path (exit code $($ImportProcess.ExitCode))" `
                          -ExitCode $ImportProcess.ExitCode
        }
    } finally {
        Remove-Item -Path $FilteredPath, $OutFile, $ErrFile -Force -ErrorAction SilentlyContinue
    }
}

# Finds the MariaDB/MySQL command line client, and the matching dump tool.
#
# The testlab's own portable server comes first: it is deliberately self-contained, and a
# run that silently used a system-wide instance instead would drop tw_world / tw_char /
# tw_logon / tw_logs on THAT server. Only when the portable copy is absent does this fall
# back to PATH and the conventional install locations.
#
# Both naming generations are handled. MariaDB renamed its client to mariadb.exe in 10.6
# and newer builds may ship no mysql.exe at all, while the 10.3 portable build in this
# testlab has only mysql.exe. sql/setup_databases.bat in this repository prefers 'mariadb'
# and falls back to 'mysql'; the same order is used here. The dump tool is paired from the
# same directory, mariadb-dump.exe or mysqldump.exe.
function Resolve-MariaDbClient {
    param (
        [string]$Explicit,
        [string]$PortableBinDir
    )

    # -DbFlavor narrows the names when a machine has both engines installed. MariaDB uses
    # mariadb.exe from 10.6 on (and older builds, like the 10.3 portable one this testlab
    # ships with, only have mysql.exe), so MariaDB has to accept both spellings; MySQL only
    # ever ships mysql.exe.
    switch ($DbFlavor) {
        "MariaDB" { $ClientNames = @("mariadb.exe", "mysql.exe"); $DumpNames = @("mariadb-dump.exe", "mysqldump.exe") }
        "MySQL"   { $ClientNames = @("mysql.exe");                $DumpNames = @("mysqldump.exe") }
        default   { $ClientNames = @("mariadb.exe", "mysql.exe"); $DumpNames = @("mariadb-dump.exe", "mysqldump.exe") }
    }

    # Given a directory, return a resolved pair or $null.
    function Resolve-FromDirectory {
        param([string]$Directory, [string]$Source)

        if ([string]::IsNullOrWhiteSpace($Directory) -or -not (Test-Path -LiteralPath $Directory)) { return $null }

        foreach ($ClientName in $ClientNames) {
            $ClientCandidate = Join-Path $Directory $ClientName
            if (-not (Test-Path -LiteralPath $ClientCandidate)) { continue }

            $DumpCandidate = $null
            foreach ($DumpName in $DumpNames) {
                $Probe = Join-Path $Directory $DumpName
                if (Test-Path -LiteralPath $Probe) { $DumpCandidate = $Probe; break }
            }

            return @{
                Client = [System.IO.Path]::GetFullPath($ClientCandidate)
                Dump   = $DumpCandidate
                Source = $Source
            }
        }

        return $null
    }

    # 1. An explicit answer is honoured or the run stops - see the parameter comment.
    if (-not [string]::IsNullOrWhiteSpace($Explicit)) {
        if (-not (Test-Path -LiteralPath $Explicit)) {
            Stop-Pipeline -Message "No database client at the -MariaDbClientPath given: $Explicit"
        }

        $ExplicitDir = Split-Path $Explicit -Parent
        $Dump = $null
        foreach ($DumpName in $DumpNames) {
            $Probe = Join-Path $ExplicitDir $DumpName
            if (Test-Path -LiteralPath $Probe) { $Dump = $Probe; break }
        }

        return @{
            Client = [System.IO.Path]::GetFullPath($Explicit)
            Dump   = $Dump
            Source = "-MariaDbClientPath"
        }
    }

    # 2. The testlab's own portable server.
    $Portable = Resolve-FromDirectory -Directory $PortableBinDir -Source "portable server in $MangosInstalationDir\$MariaDbFolderName"
    if ($Portable) { return $Portable }

    # 3. Whatever is on PATH, in the repository's own order of preference.
    foreach ($ClientName in $ClientNames) {
        $OnPath = Get-Command $ClientName -ErrorAction SilentlyContinue
        if ($OnPath) {
            $Resolved = Resolve-FromDirectory -Directory (Split-Path $OnPath.Source -Parent) -Source "PATH"
            if ($Resolved) { return $Resolved }
        }
    }

    # 4. Conventional install locations, built from environment variables rather than a
    #    literal drive letter. Newest first, so a machine with several picks the current one.
    foreach ($ProgramDir in @($env:ProgramFiles, ${env:ProgramFiles(x86)})) {
        if ([string]::IsNullOrWhiteSpace($ProgramDir)) { continue }

        $InstallationPattern = switch ($DbFlavor) {
            "MariaDB" { '^MariaDB' }
            "MySQL"   { '^MySQL' }
            default   { '^(MariaDB|MySQL)' }
        }

        $Installations = Get-ChildItem -Path $ProgramDir -Directory -ErrorAction SilentlyContinue |
                         Where-Object { $_.Name -match $InstallationPattern } |
                         Sort-Object Name -Descending

        foreach ($Installation in $Installations) {
            # MySQL nests one level deeper: "MySQL\MySQL Server 8.0\bin".
            $BinDirectories = @((Join-Path $Installation.FullName "bin"))
            $BinDirectories += (Get-ChildItem -Path $Installation.FullName -Directory -ErrorAction SilentlyContinue |
                                ForEach-Object { Join-Path $_.FullName "bin" })

            foreach ($BinDirectory in $BinDirectories) {
                $Resolved = Resolve-FromDirectory -Directory $BinDirectory -Source $Installation.Name
                if ($Resolved) { return $Resolved }
            }
        }
    }

    Stop-Pipeline -Message ("No MariaDB/MySQL client found. Put a portable MariaDB in " +
                            "$MangosInstalationDir\$MariaDbFolderName\, or install one and put its bin\ on PATH, " +
                            "or pass -MariaDbClientPath <path to mariadb.exe or mysql.exe>.")
}

# Runs a trivial query and reports back rather than aborting, so the caller can tell the
# failure modes apart. stdout and stderr go to files because PowerShell 5.1 wraps a native
# command's redirected stderr in ErrorRecords, which makes the text awkward to match on.
function Test-MariaDbConnection {
    param (
        [string]$DefaultsFile
    )

    $OutFile = Join-Path $env:TEMP ("tw_dbprobe_out_{0}.txt" -f [guid]::NewGuid().ToString('N'))
    $ErrFile = Join-Path $env:TEMP ("tw_dbprobe_err_{0}.txt" -f [guid]::NewGuid().ToString('N'))

    try {
        # --connect-timeout bounds each attempt. Without it a dead port costs the client's
        # own ~2 s TCP timeout per try, and -DbStartupTimeoutSeconds overshot by 3x.
        #
        # The statement is quoted by hand. Start-Process joins -ArgumentList with spaces and
        # does NOT quote an element that contains one, so "SELECT 1;" arrived as two
        # arguments: the client took SELECT as the statement and "1;" as a database name and
        # answered "ERROR 1049 (42000): Unknown database '1;'" - from a server that was up
        # and answering the whole time. Probing a dead port never showed it, because the
        # connection fails before the arguments are parsed.
        $Probe = Start-Process -FilePath $MariaDBPath `
                               -ArgumentList @("--defaults-extra-file=`"$DefaultsFile`"", "--connect-timeout=3", "-e", "`"SELECT 1`"") `
                               -RedirectStandardOutput $OutFile `
                               -RedirectStandardError $ErrFile `
                               -NoNewWindow -PassThru -Wait

        $ErrorText = ""
        if (Test-Path -LiteralPath $ErrFile) { $ErrorText = (Get-Content -Path $ErrFile -Raw -ErrorAction SilentlyContinue) }

        return @{ ExitCode = $Probe.ExitCode; Error = ("" + $ErrorText).Trim() }
    } finally {
        Remove-Item -Path $OutFile, $ErrFile -Force -ErrorAction SilentlyContinue
    }
}

# Waits for the server to start answering, then reports what it is.
#
# One-shot checking was a race: 1.Start mysql.bat launches mysqld asynchronously, so a run
# started straight afterwards saw "not answering" from a server that was seconds from ready.
# Bad credentials are NOT retried - waiting cannot fix a wrong password, and doing so would
# just turn an instant, clear error into a slow one.
function Wait-ForMariaDb {
    param (
        [int]$TimeoutSeconds
    )

    $Deadline  = (Get-Date).AddSeconds($TimeoutSeconds)
    $Announced = $false
    $LastError = ""

    while ($true) {
        $Probe = Test-MariaDbConnection -DefaultsFile $script:RootDefaultsFile
        if ($Probe.ExitCode -eq 0) { return }

        $LastError = $Probe.Error

        # Only a connection-level failure is worth waiting out. Anything else means the
        # server answered - it is up, and retrying for another half minute just delays a
        # report of a problem that will not fix itself. ERROR 2002/2003 (and the "Can't
        # connect" text) are the not-listening-yet cases; 1045 is a bad password, 1049 a
        # bad database name, and so on.
        $IsStillStarting = $LastError -match "Can't connect|ERROR 200[23]"

        if (-not $IsStillStarting -and -not [string]::IsNullOrWhiteSpace($LastError)) {
            if ($LastError -match 'Access denied') {
                Stop-Pipeline -Message ("The database server is running but rejected the 'root' credentials. " +
                                        "Check -RootPassword. Server said: $LastError")
            }

            Stop-Pipeline -Message ("The database server is running but refused the connection check. " +
                                    "Server said: $LastError")
        }

        if ((Get-Date) -ge $Deadline) { break }

        if (-not $Announced) {
            Write-Host " -> Waiting up to $TimeoutSeconds s for MariaDB to accept connections..."
            $Announced = $true
        }

        Start-Sleep -Seconds 2
    }

    Stop-Pipeline -Message ("MariaDB did not answer within $TimeoutSeconds s. Start it first " +
                            "($MangosInstalationDir\1.Start mysql.bat), or raise -DbStartupTimeoutSeconds. " +
                            "Last error: $LastError")
}

# Finds the vcpkg installation instead of assuming where it lives.
#
# Order of preference: what the caller asked for, then VCPKG_ROOT, then vcpkg.exe on PATH,
# then a couple of conventional spots. The conventional ones are built from environment
# variables rather than a literal drive letter, and every candidate has to actually contain
# vcpkg.exe before it is accepted - so this probes, it never assumes.
function Resolve-VcpkgDirectory {
    param (
        [string]$Explicit
    )

    # An explicit answer is used or it fails - never quietly replaced by a discovered one.
    # Building against a different vcpkg than the one that was asked for is the kind of
    # surprise that costs an evening to notice.
    if (-not [string]::IsNullOrWhiteSpace($Explicit)) {
        if (Test-Path -LiteralPath (Join-Path $Explicit "vcpkg.exe")) {
            return [System.IO.Path]::GetFullPath($Explicit)
        }
        Stop-Pipeline -Message "No vcpkg.exe under the -VcpkgDirectory given: $Explicit"
    }

    $Candidates = New-Object System.Collections.Generic.List[string]

    if (-not [string]::IsNullOrWhiteSpace($env:VCPKG_ROOT)) { $Candidates.Add($env:VCPKG_ROOT) }

    $OnPath = Get-Command "vcpkg.exe" -ErrorAction SilentlyContinue
    if ($OnPath) { $Candidates.Add((Split-Path $OnPath.Source -Parent)) }

    foreach ($Base in @($env:SystemDrive, $env:USERPROFILE)) {
        if ([string]::IsNullOrWhiteSpace($Base)) { continue }
        $Candidates.Add((Join-Path $Base "vcpkg"))
        $Candidates.Add((Join-Path $Base "WOW\vcpkg"))
    }

    foreach ($Candidate in $Candidates) {
        if (Test-Path -LiteralPath (Join-Path $Candidate "vcpkg.exe")) {
            return [System.IO.Path]::GetFullPath($Candidate)
        }
    }

    Stop-Pipeline -Message ("Could not locate vcpkg. Set VCPKG_ROOT, put vcpkg.exe on PATH, " +
                            "or pass -VcpkgDirectory <path>. Looked in: " + ($Candidates -join "; "))
}

# Bumped whenever the generated launcher content changes. An existing launcher that this
# pipeline wrote at an older version, and that nobody has edited since, is refreshed on the
# next run - which is the whole point of the marker below.
$script:LauncherFormatVersion = 3

# The encoding the launcher .bat files are written in.
#
# ASCII was wrong twice over. It is a LOSSY encoder: every character outside 7-bit ASCII
# becomes a literal "?" on disk. So -MariaDbFolderName "mariadb-10.3.39-winx64-cestina"
# with an accent in it produced cd /d "%~dp0mariadb-...-?e?tina\bin" - a launcher that
# cannot find its own database - and, because the marker checksum was computed from the
# text BEFORE that substitution, every later run recomputed a different checksum, decided
# the file had been hand-edited, and refused to repair the file the pipeline had broken
# itself.
#
# cmd.exe reads a .bat in the console's OEM code page, so that is what it is written in.
# On a Czech machine that is CP852, which represents the accented characters ASCII threw
# away.
$script:LauncherEncoding = [System.Text.Encoding]::GetEncoding(
    [System.Globalization.CultureInfo]::CurrentCulture.TextInfo.OEMCodePage)

# Expected fingerprint of dbc_verifier.json, the manifest step 01 checks every DBC against.
#
# That manifest describes the last officially released client, so in practice it does not
# change - which is exactly why a silent change matters. Nothing else in the run would
# notice a truncated download, a half-written file or a manifest belonging to a different
# client build: step 01 would cheerfully verify the DBCs against the wrong hashes and
# either pass when it should not, or fail in a way that points at the client rather than at
# the manifest.
#
# Normalised (see Get-TextChecksum), not the raw file hash, because git rewrites line
# endings on checkout depending on core.autocrlf - the two copies are byte-identical here
# but need not be on a fresh clone elsewhere, and that would be a false alarm.
#
# If the client ever is updated: run the pipeline, take the hash it prints, and put it here.
$script:ExpectedDbcManifestChecksum = "ae690876b46c2287f3331879618dad5227ebc229e7ae55fadc6ec2fd5149af82"

# Stable fingerprint of a piece of text. Line endings and trailing blank lines are
# normalised first, so a file that differs only in those - which is what git's autocrlf
# handling produces on a fresh clone - still fingerprints the same.
#
# -Length shortens the result: the launcher markers carry 16 characters to stay readable on
# one line, while the manifest check uses the full digest.
function Get-TextChecksum {
    param (
        [Parameter(Mandatory = $true)][AllowEmptyString()][string]$Text,
        [int]$Length = 0
    )

    $Normalised = ($Text -replace "`r`n", "`n").TrimEnd()
    $Hasher = [System.Security.Cryptography.SHA256]::Create()
    try {
        $Digest = $Hasher.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($Normalised))
        $Hex    = ([System.BitConverter]::ToString($Digest) -replace '-', '').ToLower()
        if ($Length -gt 0) { return $Hex.Substring(0, $Length) }
        return $Hex
    } finally {
        $Hasher.Dispose()
    }
}

# Escapes a string so it is safe as the REPLACEMENT operand of -replace.
#
# The right-hand side of -replace is not a literal. .NET reads $1, $&, $`, $' and $$ in it
# as substitution directives, while every replacement value in step 10 is built by string
# interpolation from paths and credentials the operator supplies. One $ in -DbPassword was
# enough to silently rewrite the connection string handed to the server: 'pa$$w0rd'
# reached mangosd.conf as 'pa$w0rd', and 'a$&b' pasted the entire matched config line
# into the password field. The pipeline still printed "[OK] mangosd.conf updated" and
# exited 0 - the only symptom was a server that could not log in to its own databases.
# Paths are affected the same way: a workspace under C:\WOW\$lab would corrupt DataDir.
#
# Doubling each $ is what the .NET replacement grammar defines as one literal $. String
# .Replace is used rather than -replace so this function is not subject to its own hazard.
function ConvertTo-ReplacementLiteral {
    param (
        [Parameter(Mandatory = $true)][AllowEmptyString()][string]$Text
    )

    return $Text.Replace('$', '$$')
}

# Writes one of the server launcher .bat files.
#
# "Skip if it exists" is not enough on its own: these files were written by an earlier
# version of this pipeline, so a change here - the working-directory fix in the MariaDB
# launcher, say - would never reach a testlab that had already been set up once, and the
# operator would keep running a stale script with no sign anything was wrong.
#
# But blindly overwriting is worse: these are the operator's entry points and may well have
# been hand-tuned. So each generated launcher carries a marker line naming the version that
# wrote it and a checksum of the body, which tells the three cases apart:
#
#   marker matches, version current  -> nothing to do
#   marker matches, version older    -> ours, untouched, and stale: safely refreshed
#   checksum differs, or no marker   -> hand-made or edited: left alone, reported
#
# Content is written in the console's OEM code page, which is what cmd.exe reads a .bat in
# (see $script:LauncherEncoding). The generated text is plain ASCII apart from whatever the
# operator's own folder names contribute.
function New-ServerLauncherScript {
    param (
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Content
    )

    $LauncherName = Split-Path $Path -Leaf

    # Checksum what will actually be on disk, not what was handed in. Any encoding is
    # potentially lossy for some input - even the OEM code page cannot hold, say, Cyrillic
    # on CP852 - and a checksum taken before the round trip can then never match the file
    # it describes, which permanently disables the refresh logic below.
    $EncodedContent = $script:LauncherEncoding.GetString($script:LauncherEncoding.GetBytes($Content))
    if ($EncodedContent -ne $Content) {
        Write-Warning ("$LauncherName contains characters the console code page " +
                       "($($script:LauncherEncoding.WebName)) cannot represent; they were replaced. " +
                       "Check the paths in it - a folder name is the usual source.")
        $Content = $EncodedContent
    }

    $Checksum     = Get-TextChecksum -Text $Content -Length 16
    $MarkerLine   = ":: tortoise-testlab-launcher version=$($script:LauncherFormatVersion) checksum=$Checksum"
    # Trailing newline matters: without it anything later appended to the file lands on the
    # marker line and corrupts it.
    $FileText     = (($Content.TrimEnd() + "`n" + $MarkerLine + "`n") -replace "`r`n", "`n") -replace "`n", "`r`n"

    if (Test-Path -LiteralPath $Path) {
        # Read in the same encoding it is written in, or a launcher holding an accented
        # path would fingerprint differently on the way back in.
        $Existing      = [System.IO.File]::ReadAllText($Path, $script:LauncherEncoding)
        $ExistingLines = @($Existing -split "`r?`n")
        $FoundMarker   = @($ExistingLines | Where-Object { $_ -match '^::\s*tortoise-testlab-launcher\s+version=(\d+)\s+checksum=([0-9a-f]+)' })

        if ($FoundMarker.Count -eq 0) {
            Write-Warning ("$LauncherName was not written by this pipeline (no version marker), so it is left as it is. " +
                           "If it stops working after an update, compare it against tools/testlab_pipeline in the repository.")
            return
        }

        # -match above populated $Matches from the last line it tested; re-match to be sure
        # it holds this file's marker rather than whatever was tested last.
        $null = $FoundMarker[-1] -match '^::\s*tortoise-testlab-launcher\s+version=(\d+)\s+checksum=([0-9a-f]+)'
        $ExistingVersion  = [int]$Matches[1]
        $ExistingChecksum = $Matches[2]

        # The body is everything except the marker line.
        $ExistingBody = ($ExistingLines | Where-Object { $_ -notmatch '^::\s*tortoise-testlab-launcher\s' }) -join "`n"

        if ((Get-TextChecksum -Text $ExistingBody -Length 16) -ne $ExistingChecksum) {
            Write-Warning "$LauncherName has been edited since the pipeline wrote it, so it is left untouched."
            return
        }

        if ($ExistingVersion -eq $script:LauncherFormatVersion -and $ExistingChecksum -eq $Checksum) {
            Write-Host " -> [SKIP] Launcher is current: $LauncherName"
            return
        }

        $Reason = if ($ExistingVersion -ne $script:LauncherFormatVersion) {
            "version $ExistingVersion -> $($script:LauncherFormatVersion)"
        } else {
            "content changed since it was written"
        }

        # A failed write must not be followed by the success line - see New-PipelineLock.
        # A read-only or locked launcher used to be reported as refreshed while the stale
        # file stayed on disk, and the run still exited 0.
        try {
            [System.IO.File]::WriteAllText($Path, $FileText, $script:LauncherEncoding)
        } catch {
            Write-Warning "Could not refresh $LauncherName ($Reason): $($_.Exception.Message)"
            return
        }

        Write-Host " -> Refreshed stale launcher ($Reason): $LauncherName" -ForegroundColor Yellow
        return
    }

    try {
        [System.IO.File]::WriteAllText($Path, $FileText, $script:LauncherEncoding)
    } catch {
        Write-Warning "Could not create $LauncherName : $($_.Exception.Message)"
        return
    }

    Write-Host " -> Created launcher: $LauncherName" -ForegroundColor Green
}

# Credentials, the source to build, the vcpkg location, the realm entry and the bot
# population all arrive through param() at the top of this script. Override them on the
# command line - nothing in this file needs editing to run it against a different
# environment, fork or branch.

# CORE ENGINE SYSTEM DIRECTORIES PARAMETERS
# Relative segments only. Every one of them is joined onto the workspace root below, so the
# whole testlab can be moved or renamed without touching anything here.
$MangosBinDir   = "bin"
$MangosLibDir   = "lib"
$MangosEtcDir   = "etc"
$MangosDataDir   = "data"
$MangosLogsDir   = "logs"
$MangosHonorDir  = "honor"
$MangosPDumpDir   = "pdump"
$MangosLuaDir	 = "lua_scripts"
$MangosToolsDir   = "tools"
$MangosInstalationDir = "server"
$MangosBuildDir = "build"
$MangosTortoiseSourceDir = "tortoise-wow"
$MangosPipelineBackupDir = "pipeline_backups"

# STEP variable definitions
Write-PipelineHeader -StepName "00: Starting variable definitions"
Write-Host "Setting up variables"

# The workspace root is the single anchor everything else is derived from, so it has to be
# an absolute path before anything uses it.
#
# Not a formality: this script mixes PowerShell cmdlets with .NET file APIs
# ([System.IO.File]::ReadAllText, StreamWriter, Start-Process -RedirectStandardInput), and
# .NET keeps its OWN current directory which PowerShell's Set-Location / Push-Location does
# not update. With a relative root - "-WorkspaceRoot ." or "..\testlab" - the two resolve
# against different directories, and one of the things resolved that way is the
# Remove-Item -Recurse over the server folders.
if ([string]::IsNullOrWhiteSpace($WorkspaceRoot)) {
    # Single-quoted: PowerShell escapes with a backtick, not a backslash, so "\$PSScriptRoot"
    # printed the expanded path instead of the variable name.
    Stop-Pipeline -Message ('Workspace root is empty and $PSScriptRoot gave nothing to fall back on. ' +
                            'Pass -WorkspaceRoot explicitly when dot-sourcing or piping this script.')
}

# GetFullPath's two-argument overload does not exist on .NET Framework (Windows PowerShell
# 5.1), so a relative root is resolved against the caller's directory by hand first.
if ([System.IO.Path]::IsPathRooted($WorkspaceRoot)) {
    $ScriptDirectory = [System.IO.Path]::GetFullPath($WorkspaceRoot)
} else {
    $ScriptDirectory = [System.IO.Path]::GetFullPath((Join-Path (Get-Location).ProviderPath $WorkspaceRoot))
}

if (-not (Test-Path -LiteralPath $ScriptDirectory -PathType Container)) {
    Stop-Pipeline -Message "Workspace root does not exist (or is not a directory): $ScriptDirectory"
}

Write-Host "Workspace root: $ScriptDirectory"

# The four database names, from the prefix unless one was named explicitly.
if ([string]::IsNullOrWhiteSpace($WorldDatabaseName))     { $WorldDatabaseName     = "${DbPrefix}world" }
if ([string]::IsNullOrWhiteSpace($CharacterDatabaseName)) { $CharacterDatabaseName = "${DbPrefix}char" }
if ([string]::IsNullOrWhiteSpace($LoginDatabaseName))     { $LoginDatabaseName     = "${DbPrefix}logon" }
if ([string]::IsNullOrWhiteSpace($LogsDatabaseName))      { $LogsDatabaseName      = "${DbPrefix}logs" }

# create_databases.sql hard-codes the stock tw_* names in CREATE DATABASE and USE
# statements, and the shipped configs point the server at the same four. Renaming therefore
# has to reach both: this map rewrites the schema on import (see Invoke-MySqlFile), and
# step 10 writes the matching connection strings into mangosd.conf and realmd.conf.
$DatabaseNameMap = [ordered]@{
    "tw_world" = $WorldDatabaseName
    "tw_char"  = $CharacterDatabaseName
    "tw_logon" = $LoginDatabaseName
    "tw_logs"  = $LogsDatabaseName
}

$DatabasesAreRenamed = $false
foreach ($StockName in $DatabaseNameMap.Keys) {
    if ($DatabaseNameMap[$StockName] -ne $StockName) { $DatabasesAreRenamed = $true }
}

Write-Host "Databases: $WorldDatabaseName, $CharacterDatabaseName, $LoginDatabaseName, $LogsDatabaseName (user '$DbUser')"

if ($DatabaseOnly) {
    Write-Host ("-> -DatabaseOnly: only the databases are touched this run - no git update, no compilation, " +
               "no folder cleanup, no config file changes.") -ForegroundColor Yellow
}

# Singleton first (the authoritative machine-wide guard), then the descriptive lock file.
Assert-SingleInstance
$script:LockFile = Join-Path $ScriptDirectory "pipeline_running.lock"
Assert-NoConcurrentRun
New-PipelineLock
Write-Host "Single-instance lock acquired: $($script:LockFile) (PID $PID)"

# Sweep the temporary files left by an earlier run before writing new ones.
#
# Stop-Pipeline removes them on every exit the script controls, but Ctrl+C or Task Manager
# kills the process outright and nothing gets the chance - leaving a plaintext password in
# TEMP until something else cleans it up. Observed after an interrupted run on 2026-09-05.
# Safe to sweep unconditionally: TEMP is per-user, and the singleton acquired above means
# no other run of this script is alive to own them.
#
# Every pattern this script writes into TEMP is listed, not just the credential files. The
# filtered SQL copy in particular is a full rewrite of whatever is being imported, so an
# interrupted world import left several megabytes behind each time, and repeated
# interruptions during a build session simply accumulated.
$StaleTempPatterns = @(
    "tw_pipeline_*.cnf"    # credential option files  (New-MySqlDefaultsFile)
    "tw_import_*.sql"      # filtered import copies   (Invoke-MySqlFile)
    "tw_import_out_*.txt"  # captured client output   (Invoke-MySqlFile)
    "tw_import_err_*.txt"
    "tw_dbprobe_out_*.txt" # captured probe output    (Test-MariaDbConnection)
    "tw_dbprobe_err_*.txt"
)

$StaleTempFiles = @(
    foreach ($Pattern in $StaleTempPatterns) {
        Get-ChildItem -Path $env:TEMP -Filter $Pattern -File -ErrorAction SilentlyContinue
    }
)

if ($StaleTempFiles.Count -gt 0) {
    Write-Host "Removing $($StaleTempFiles.Count) temporary file(s) left by an interrupted run."
    $StaleTempFiles | Remove-Item -Force -ErrorAction SilentlyContinue
}


# Define absolute paths based on the workspace root
# Resolved just below by Resolve-MariaDbClient; the portable server's bin\ is only the
# first place it looks.
$PortableMariaDbBin = "$ScriptDirectory\$MangosInstalationDir\$MariaDbFolderName\bin"
$SqlBaseDirectory = "$ScriptDirectory\$MangosTortoiseSourceDir\sql\base"
$CreateDatabasesSql = "$ScriptDirectory\$MangosTortoiseSourceDir\sql\create_databases.sql"
# Define local build artifacts directories
$SourceDir  = Join-Path $ScriptDirectory $MangosTortoiseSourceDir
$BuildDir   = Join-Path $SourceDir $MangosBuildDir
$InstallDir = Join-Path $ScriptDirectory $MangosInstalationDir # Targeted server binaries directory
$BackupFolder  = Join-Path $ScriptDirectory $MangosPipelineBackupDir

# Locate the database client before anything needs it (see Resolve-MariaDbClient).
$MariaDbTools  = Resolve-MariaDbClient -Explicit $MariaDbClientPath -PortableBinDir $PortableMariaDbBin
$MariaDBPath   = $MariaDbTools.Client
$MySQLDumpPath = $MariaDbTools.Dump
Write-Host "Database client: $MariaDBPath (found via: $($MariaDbTools.Source))"

# Materialise the credentials into option files (see New-MySqlDefaultsFile).
$script:RootDefaultsFile = New-MySqlDefaultsFile -User "root"   -Password $RootPassword
$script:DbDefaultsFile   = New-MySqlDefaultsFile -User $DbUser -Password $DbPassword

# Locate vcpkg (see Resolve-VcpkgDirectory) and derive the installed-packages path from it.
# Skipped entirely under -DatabaseOnly: nothing in that mode compiles anything, and
# Resolve-VcpkgDirectory aborts the whole run if vcpkg cannot be found anywhere at all -
# a needless requirement on a machine set up only to reset a database.
if ($DatabaseOnly) {
    $VcpkgDirectory     = ""
    $VcpkgExecutable    = ""
    $VcpkgInstalledPath = ""
    Write-Host "vcpkg: skipped (-DatabaseOnly)."
} else {
    $VcpkgDirectory     = Resolve-VcpkgDirectory -Explicit $VcpkgDirectory
    $VcpkgExecutable    = Join-Path $VcpkgDirectory "vcpkg.exe"
    $VcpkgInstalledPath = Join-Path $VcpkgDirectory "installed\$VcpkgTriplet"
    Write-Host "vcpkg: $VcpkgDirectory (triplet $VcpkgTriplet)"
}

Write-Host "[OK] Variables were set up."  -ForegroundColor Green

# ==============================================================================
# PIPELINE STEP 00b: PREFLIGHT
# ==============================================================================
# Everything the run depends on, verified in one place while the testlab is still intact.
#
# The ordering matters more than the checks do. Step 04 drops the databases and wipes the
# server directory; a missing cmake used to surface in step 08, four steps AFTER that, so
# the failure mode was "your data is gone and the build never started". Anything that can
# be established up front is established here instead.
Write-PipelineHeader -StepName "00b: Preflight"
Write-Host "Verifying the tools and services this run depends on..."

if ($DatabaseOnly) {
    Write-Host " -> git/cmake/vcpkg: skipped (-DatabaseOnly touches only the databases)."
} else {
foreach ($Requirement in @(
        @{ Name = "git";   Hint = "install Git for Windows and make sure it is on PATH" },
        @{ Name = "cmake"; Hint = "install CMake 3.16 or newer and tick 'add to PATH' in its installer" })) {

    $Found = Get-Command $Requirement.Name -ErrorAction SilentlyContinue
    if (-not $Found) {
        Stop-Pipeline -Message "Required tool '$($Requirement.Name)' is not on PATH - $($Requirement.Hint)."
    }
    Write-Host " -> $($Requirement.Name): $($Found.Source)"
}

if (-not (Test-Path -LiteralPath $VcpkgExecutable)) {
    Stop-Pipeline -Message "Critical component missing: could not locate vcpkg executable at $VcpkgExecutable"
}
Write-Host " -> vcpkg: $VcpkgExecutable"
}

Write-Host " -> client: $MariaDBPath"

# The dump tool is only reached on the -SkipBotRegen path, but finding out it is missing
# after the backup was supposed to happen would be far too late.
if ($SkipBotRegen) {
    if (-not $MySQLDumpPath -or -not (Test-Path -LiteralPath $MySQLDumpPath)) {
        Stop-Pipeline -Message ("-SkipBotRegen needs mysqldump.exe / mariadb-dump.exe to back your data up first, " +
                                "and neither is next to $MariaDBPath.")
    }
    Write-Host " -> dump tool: $MySQLDumpPath"
}

# The server has to be running, not merely installed - and it may still be starting.
Wait-ForMariaDb -TimeoutSeconds $DbStartupTimeoutSeconds

# Say which server this actually is. The pipeline is about to drop four databases on it, so
# "which instance am I pointed at" is worth one line in the log.
$ServerIdentity = & $MariaDBPath "--defaults-extra-file=$($script:RootDefaultsFile)" -N -B `
                                 -e "SELECT CONCAT(VERSION(), ' on ', @@hostname, ':', @@port);" 2>$null
Write-Host " -> connected: $ServerIdentity"

# Best effort only: no Visual Studio means CMake has no generator, but vswhere is not
# guaranteed to be present and its absence proves nothing either way.
# Irrelevant under -DatabaseOnly - nothing compiles, so nothing needs a generator.
if (-not $DatabaseOnly) {
    $VsWhere = Join-Path ${env:ProgramFiles(x86)} "Microsoft Visual Studio\Installer\vswhere.exe"
    if (Test-Path -LiteralPath $VsWhere) {
        $VsInstall = & $VsWhere -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath 2>$null
        if ($VsInstall) {
            Write-Host " -> Visual Studio C++ toolset: $VsInstall"
        } else {
            Write-Warning "No Visual Studio installation with the C++ toolset found. The build in step 08 will fail without it."
        }
    }
}

# A testlab that was built with the modules, being rebuilt without them, is worth one line of
# warning: the databases come out with no ai_playerbot_* tables in them, and a mangosd that
# still has the modules compiled in dies in RandomPlayerbotMgr::PrepareTeleportCache() on the
# first missing table - a crash that reads like a core bug and is not one. The module
# directory left behind by an earlier -WithBots run is the tell.
if (-not $WithBots) {
    $PreviousModuleDir = Join-Path $SourceDir "modules\mod-playerbots"
    if (Test-Path $PreviousModuleDir) {
        Write-Warning ("This workspace has modules\mod-playerbots from an earlier run, but -WithBots was not passed. " +
                       "The build and the databases will both come out without the bots. If the server you are about " +
                       "to run was built with them, add -WithBots.")
    }
}

Write-Host "[OK] Preflight passed - the run has everything it needs." -ForegroundColor Green

# ==============================================================================
# PIPELINE STEP 01: CLIENT DATA INTEGRITY & DBC HASH VERIFICATION
# ==============================================================================
if ($DatabaseOnly) {
    Write-Host "01: Client Data Verification - skipped (-DatabaseOnly touches only the databases)." -ForegroundColor DarkGray
} else {
Write-PipelineHeader -StepName "01: Client Data Verification"
Write-Host "Initializing client data integrity verification..."

# Define targeted data paths within your pipeline structure
$DataRoot     = Join-Path $ScriptDirectory "$MangosInstalationDir\$MangosDataDir"
# The DBC hash manifest ships next to this script in the repository, but a workspace copy
# takes precedence so a testlab can pin its own client build without editing the tool.
#
# Which of the two was picked decides how a fingerprint mismatch is treated below, and
# "does the workspace have one?" is NOT that question: -WorkspaceRoot defaults to this
# script's own folder, which is exactly where the shipped manifest lives. So on every
# documented run the shipped copy was found in the workspace, classified as an override,
# and its mismatch downgraded from an abort to a warning - the enforcing branch could only
# be reached by pointing -WorkspaceRoot at a directory with no manifest at all. Compare the
# resolved paths instead of guessing from existence.
$ShippedVerifier   = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot "dbc_verifier.json"))
$WorkspaceVerifier = [System.IO.Path]::GetFullPath((Join-Path $ScriptDirectory "dbc_verifier.json"))

$JsonVerifier = if (Test-Path $WorkspaceVerifier) { $WorkspaceVerifier } else { $ShippedVerifier }

# -eq on strings is case-insensitive, which is what a Windows path comparison wants.
$UsingShippedManifest = ($JsonVerifier -eq $ShippedVerifier)

# 1. Verify existence of required data subdirectories
$RequiredFolders = @("dbc", "maps", "vmaps", "mmaps")
$DataFoldersValid = $true

foreach ($Folder in $RequiredFolders) {
    $TargetFolder = Join-Path $DataRoot $Folder
    if (-not (Test-Path $TargetFolder)) {
        Write-Warning "Required data directory is missing: $TargetFolder"
        $DataFoldersValid = $false
    }
}

if (-not $DataFoldersValid) {
    Stop-Pipeline -Message "Client data directories verification failed. Please extract maps/dbc files before running the pipeline."
}
Write-Host "[OK] All required data directories (dbc, maps, vmaps, mmaps) are present." -ForegroundColor Green

# 2. Verify SHA256 hashes of DBC files using the local JSON definitions file
if (-not (Test-Path $JsonVerifier)) {
    Stop-Pipeline -Message "Verification blueprint missing. Could not locate json manifest at: $JsonVerifier"
}

# Check the manifest itself before trusting anything it says.
#
# The shipped copy has to match the recorded fingerprint: it describes the last officially
# released client and is not meant to drift. A workspace copy is a deliberate override -
# putting one there is how a testlab pins a different client build - so that one is only
# reported, not refused.
$ManifestChecksum = Get-TextChecksum -Text ([System.IO.File]::ReadAllText($JsonVerifier))

if ($ManifestChecksum -ne $script:ExpectedDbcManifestChecksum) {
    if ($UsingShippedManifest) {
        Stop-Pipeline -Message ("dbc_verifier.json does not match the fingerprint recorded in this script.`n" +
                                "  file:     $JsonVerifier`n" +
                                "  expected: $($script:ExpectedDbcManifestChecksum)`n" +
                                "  actual:   $ManifestChecksum`n" +
                                "Either the file is damaged, or the client was updated and the manifest with it - " +
                                "in which case put the actual hash above into `$script:ExpectedDbcManifestChecksum.")
    }

    Write-Warning ("Using a workspace dbc_verifier.json that differs from the one shipped with the pipeline " +
                   "(fingerprint $ManifestChecksum). That is what a workspace copy is for; mentioning it so a " +
                   "stray file does not go unnoticed.")
} else {
    Write-Host " -> Manifest fingerprint verified."
}

Write-Host "Reading SHA256 blueprint from dbc_verifier.json..."

# Using native .NET file stream engine to completely bypass any Windows PowerShell BOM/Encoding parser bugs
$AbsoluteJsonPath = [System.IO.Path]::GetFullPath($JsonVerifier)
$JsonRawContent = [System.IO.File]::ReadAllText($AbsoluteJsonPath)
$DbcManifest = $null

try {
    $DbcManifest = ConvertFrom-Json $JsonRawContent -ErrorAction Stop
} catch {
    Stop-Pipeline -Message "Failed to parse dbc_verifier.json manifest structure. Ensure it is valid JSON. Error: $_"
}

# Safety check: If the manifest object remains null or empty, terminate execution immediately
if ($null -eq $DbcManifest) {
    Stop-Pipeline -Message "DBC manifest parsing yielded an empty configuration object. Terminating pipeline execution."
}

# The null check above is not enough. ConvertFrom-Json "{}" returns a PSCustomObject with
# no properties, not $null, so a manifest truncated or emptied to "{}" sailed through, the
# loop below iterated zero times, $HashVerificationPassed stayed $true and the step
# reported "All DBC file signatures successfully verified" having verified nothing.
$DbcManifestEntries = @($DbcManifest.psobject.Properties)
if ($DbcManifestEntries.Count -eq 0) {
    Stop-Pipeline -Message ("dbc_verifier.json lists no files at all, so there is nothing to verify.`n" +
                            "  file: $JsonVerifier`n" +
                            "The shipped manifest carries 158 entries; a file this empty is damaged.")
}

$HashVerificationPassed = $true
Write-Host "Verifying $($DbcManifestEntries.Count) DBC file signatures..."

# Iterate through each defined file inside the JSON manifest properties
foreach ($DbcFile in $DbcManifestEntries) {
    $FileName    = $DbcFile.Name
    $ExpectedHash = $DbcFile.Value
    $FullFilePath = Join-Path (Join-Path $DataRoot "dbc") $FileName

    if (-not (Test-Path $FullFilePath)) {
        Write-Warning "DBC file declared in manifest is missing from directory: $FileName"
        $HashVerificationPassed = $false
        continue
    }

    # Compute the local file SHA256 hash checksum stream matching standard formats
    $FileHashResult = Get-FileHash -Path $FullFilePath -Algorithm SHA256
    $ActualHash     = $FileHashResult.Hash.ToLower()
    $ExpectedHash   = $ExpectedHash.ToLower()

    if ($ActualHash -ne $ExpectedHash) {
        Write-Warning "Hash mismatch detected on file: $FileName"
        Write-Warning " -> Expected: $ExpectedHash"
        Write-Warning " -> Detected: $ActualHash"
        $HashVerificationPassed = $false
    }
}

if (-not $HashVerificationPassed) {
    Stop-Pipeline -Message "DBC integrity verification failed. Version mismatch detected against build requirements."
}
Write-Host "[OK] All $($DbcManifestEntries.Count) DBC file signatures successfully verified against SHA256 blueprint." -ForegroundColor Green
}

# ==============================================================================
# PIPELINE STEP 02: VCPKG DEPENDENCY CHECK
# ==============================================================================
if ($DatabaseOnly) {
    Write-Host "02+03: Vcpkg install and git source management - skipped (-DatabaseOnly touches only the databases)." -ForegroundColor DarkGray
} else {
Write-PipelineHeader -StepName "02: Vcpkg Dependency Check"
Write-Host "Verifying external C++ library environments via vcpkg toolchain..."

# $VcpkgExecutable and $VcpkgInstalledPath were resolved and verified in the preflight.

Write-Host "Starting library deployment (ACE and Boost modules) for $VcpkgTriplet..."

# The packages the playerbots module actually includes. Deliberately not the 'boost'
# meta-package: that drags in boost-cobalt, which needs C++20 and does not build under
# Visual Studio 2019.
$VcpkgPackages = @(
    "ace",
    "boost-algorithm",
    "boost-asio",
    "boost-bimap",
    "boost-bind",
    "boost-filesystem",
    "boost-functional",
    "boost-smart-ptr",
    "boost-stacktrace",
    "boost-thread",
    "boost-system"
)

$VcpkgArguments = @("install") + ($VcpkgPackages | ForEach-Object { "${_}:$VcpkgTriplet" })

# vcpkg wants to run from its own directory. Push-Location rather than Start-Process
# -WorkingDirectory on purpose: a Start-Process child writes straight to the console and
# its output never reaches the transcript, and vcpkg's output is exactly what you want in
# the log when a dependency fails to build.
Push-Location $VcpkgDirectory
try {
    Invoke-NativeLogged -Executable $VcpkgExecutable -Arguments $VcpkgArguments
} finally {
    Pop-Location
}

Assert-LastExitCode -Message "Vcpkg deployment sequence failed"

Write-Host "[OK] All required libraries (ACE and Boost modules) are fully verified and deployed." -ForegroundColor Green


# ==============================================================================
# PIPELINE STEP 03: GIT SOURCE MANAGEMENT (WITH SUBMODULES SUPPORT)
# ==============================================================================
Write-PipelineHeader -StepName "03: Git Source Management"
Write-Host "Managing repository source files and submodules..."

# The pipeline manages a remote of its own rather than commandeering 'origin'. It used to
# point origin at -RepoUrl on every run, which quietly rewrote the remote whoever works in
# that checkout had configured: their branches tracking origin/<name> ended up tracking a
# different repository, and the `fetch --prune` below then deleted the remote-tracking refs
# of the one those branches actually came from. A separate remote makes both harmless - the
# fetch and the prune only ever touch refs/remotes/testlab-source/*, and origin stays exactly
# as its owner left it.
$SourceRemote = "testlab-source"

if (-not (Test-Path $SourceDir)) {
    Write-Host "Repository not found. Cloning branch '$BranchName' with all submodules..."

    # --recurse-submodules forces Git to automatically clone Eluna and any other nested modules
    Invoke-NativeLogged -Executable "git" -Arguments @("clone", "--branch", $BranchName, "--recurse-submodules", $RepoUrl, $SourceDir)
    Assert-LastExitCode -Message "git clone of '$BranchName' failed"

    # Register the pipeline's remote alongside the origin the clone just created, so later
    # runs find the source through it and never have a reason to touch origin.
    Push-Location $SourceDir
    Invoke-NativeLogged -Executable "git" -Arguments @("remote", "add", $SourceRemote, $RepoUrl)
    Assert-LastExitCode -Message "Could not register the '$SourceRemote' git remote"
    Pop-Location

    Write-Host "[OK] Repository and all nested submodules successfully cloned." -ForegroundColor Green
} else {
    Write-Host "Repository found. Syncing latest code changes and submodules layout..."

    # Move context temporarily to repository folder to execute git updates securely
    Push-Location $SourceDir

    # Make -RepoUrl authoritative for an existing checkout too. Without this it only ever
    # applied to the first clone: every later run pulled from whatever the remote happened to
    # point at, so aiming the pipeline at a fork silently built the original repository
    # instead. A workspace left by an older run has no testlab-source yet, hence add-or-update.
    git remote get-url $SourceRemote > $null 2>&1
    if ($LASTEXITCODE -eq 0) {
        Invoke-NativeLogged -Executable "git" -Arguments @("remote", "set-url", $SourceRemote, $RepoUrl)
    } else {
        Invoke-NativeLogged -Executable "git" -Arguments @("remote", "add", $SourceRemote, $RepoUrl)
    }
    Assert-LastExitCode -Message "Could not point '$SourceRemote' at $RepoUrl"

    Invoke-NativeLogged -Executable "git" -Arguments @("fetch", $SourceRemote, "--prune")
    Assert-LastExitCode -Message "git fetch from $RepoUrl failed"

    # Refuse to switch branches over uncommitted work rather than letting git's own
    # "Your local changes would be overwritten by checkout" be the only explanation.
    # Not stashed automatically: a plain build run has no business moving someone's edits
    # out from under them, and unlike the -applyPatches path below there is nothing here
    # that requires a clean tree.
    $CurrentBranch = (git rev-parse --abbrev-ref HEAD 2>$null)
    if ($CurrentBranch -ne $BranchName) {
        $DirtyFiles = @(git status --porcelain --untracked-files=no)
        if ($DirtyFiles.Count -gt 0) {
            Pop-Location
            Stop-Pipeline -Message ("The source tree has uncommitted changes, so it cannot be switched from " +
                                    "'$CurrentBranch' to '$BranchName':`n  " + (($DirtyFiles | Select-Object -First 10) -join "`n  ") +
                                    "`nCommit or stash them in $SourceDir first, or run with -BranchName $CurrentBranch.")
        }
    }

    # Does the source repository have this branch? Answered from the refs the fetch above
    # just refreshed rather than over the network again. Three cases follow, and the
    # local-only one is a legitimate thing to build: an integration branch assembled in this
    # checkout and deliberately not pushed anywhere.
    git rev-parse --verify --quiet "refs/remotes/$SourceRemote/$BranchName" > $null 2>&1
    $BranchIsOnRemote = ($LASTEXITCODE -eq 0)

    # Check out the branch, creating it from the source remote when it is not here yet.
    git rev-parse --verify --quiet "refs/heads/$BranchName" > $null 2>&1
    if ($LASTEXITCODE -eq 0) {
        Invoke-NativeLogged -Executable "git" -Arguments @("checkout", $BranchName)
        Assert-LastExitCode -Message "git checkout of '$BranchName' failed"
    } elseif ($BranchIsOnRemote) {
        Invoke-NativeLogged -Executable "git" -Arguments @("checkout", "-b", $BranchName, "--track", "$SourceRemote/$BranchName")
        Assert-LastExitCode -Message "git checkout of '$BranchName' failed"
    } else {
        Pop-Location
        Stop-Pipeline -Message ("Branch '$BranchName' is neither in $SourceDir nor on $RepoUrl, so there is " +
                                "nothing to check out. Check the spelling, or push the branch to $RepoUrl first.")
    }

    if ($BranchIsOnRemote) {
        # Pull the remote and branch by name rather than relying on tracking configuration.
        # A bare "git pull" needs an upstream, and a branch created locally - or checked out
        # from a different remote - has none: "There is no tracking information for the
        # current branch", and the run stopped before it built anything.
        Invoke-NativeLogged -Executable "git" -Arguments @("pull", $SourceRemote, $BranchName)
        Assert-LastExitCode -Message "git pull of '$BranchName' from $RepoUrl failed"
    } else {
        # There is nothing to pull from. Building the branch as it stands is the whole point
        # of naming it; a pull here would only fail with "couldn't find remote ref".
        Write-Host " -> '$BranchName' exists only in this checkout - building it as it stands." -ForegroundColor DarkGray
    }

    Write-Host "Synchronizing and updating git submodules (Eluna engine)..."
    # Update and initialize any new or existing submodules recursively
    Invoke-NativeLogged -Executable "git" -Arguments @("submodule", "update", "--init", "--recursive")
    Assert-LastExitCode -Message "git submodule update failed"

    Pop-Location
    Write-Host "[OK] Repository source files and submodules are fully up to date." -ForegroundColor Green
}

# ==============================================================================
# PIPELINE SUB-STEP: SYNC PLAYERBOT/DUNGEON-CLEAR MODULES
# ==============================================================================
# The core migration this pipeline is being adapted for moves engine code to Penqle and
# leaves Shyalya holding only modules/mod-playerbots and modules/mod-dungeon-clear. This
# keeps a second, dedicated checkout of -ModulesRepoUrl/-ModulesBranch and mirrors just
# those two module directories - sql\ and conf\ included, since both live inside the module
# directory itself - into the checkout -RepoUrl/-BranchName produced above.
#
# A second clone rather than a sparse-checkout of -RepoUrl's own tree: the two are entirely
# independent repositories/branches by design (that is the whole point of the split), and a
# plain clone is the one mechanism that stays correct on both sides of the migration -
# before it lands, when Shyalya's checkout already carries these directories itself and this
# is a harmless, redundant mirror of content already there, and after, when -RepoUrl points
# at Penqle and this becomes the only source for them.
if (-not $WithBots) {
    Write-Host "Module sync - skipped (pass -WithBots to add the playerbot and dungeon-clear modules)." -ForegroundColor DarkGray
} else {
Write-Host "Syncing playerbot/dungeon-clear modules from $ModulesRepoUrl ($ModulesBranch)..."

$ModulesSourceDir = Join-Path $ScriptDirectory "modules-source"

# core.longpaths: modules/mod-playerbots/src/playerbot/strategy/<class>/*.cpp runs deep
# enough that checking it out under a -WorkspaceRoot with any real nesting of its own can
# clear Windows' 260-character MAX_PATH - reproduced with a scratch directory ~140
# characters deep: "Cloning into 'modules-source'... unable to checkout working tree", the
# clone left half-applied. This is per-invocation (-c), not a change to the operator's
# global git config.
if (-not (Test-Path $ModulesSourceDir)) {
    Invoke-NativeLogged -Executable "git" -Arguments @("-c", "core.longpaths=true", "clone", "--branch", $ModulesBranch, $ModulesRepoUrl, $ModulesSourceDir)
    Assert-LastExitCode -Message "git clone of the module source '$ModulesBranch' from $ModulesRepoUrl failed"
} else {
    Push-Location $ModulesSourceDir

    # Same reasoning as the -RepoUrl checkout above: make -ModulesRepoUrl authoritative for
    # an existing checkout too, fetch and check out -ModulesBranch by name (creating a local
    # tracking branch if this is the first time), then pull by name rather than relying on
    # tracking configuration a locally-created branch would not have.
    #
    # This one does drive 'origin' directly, unlike the source checkout. The reason the
    # source needs a remote of its own is that people work in it - they have their own
    # remotes and their own branches tracking them, and the pipeline rewriting origin
    # underneath that breaks their pushes. modules-source is created by this script, exists
    # for this script, and nobody commits in it, so there is no such configuration to damage.
    Invoke-NativeLogged -Executable "git" -Arguments @("remote", "set-url", "origin", $ModulesRepoUrl)
    Assert-LastExitCode -Message "Could not point the module source's 'origin' at $ModulesRepoUrl"

    Invoke-NativeLogged -Executable "git" -Arguments @("-c", "core.longpaths=true", "fetch", "origin", "--prune")
    Assert-LastExitCode -Message "git fetch of the module source from $ModulesRepoUrl failed"

    $CurrentModulesBranch = (git rev-parse --abbrev-ref HEAD 2>$null)
    if ($CurrentModulesBranch -ne $ModulesBranch) {
        git rev-parse --verify --quiet "refs/heads/$ModulesBranch" > $null 2>&1
        if ($LASTEXITCODE -eq 0) {
            Invoke-NativeLogged -Executable "git" -Arguments @("-c", "core.longpaths=true", "checkout", $ModulesBranch)
        } else {
            Invoke-NativeLogged -Executable "git" -Arguments @("-c", "core.longpaths=true", "checkout", "-b", $ModulesBranch, "--track", "origin/$ModulesBranch")
        }
        Assert-LastExitCode -Message "git checkout of the module source branch '$ModulesBranch' failed"
    }

    Invoke-NativeLogged -Executable "git" -Arguments @("-c", "core.longpaths=true", "pull", "origin", $ModulesBranch)
    Assert-LastExitCode -Message "git pull of the module source branch '$ModulesBranch' from $ModulesRepoUrl failed"

    Pop-Location
}

# The two modules this migration keeps in Shyalya. A plain list rather than a parameter:
# nothing else is planned to move here, and a third entry is a one-line addition when that
# changes rather than a new parameter operators have to know to pass.
$script:ModulesToSync = @("mod-playerbots", "mod-dungeon-clear")

foreach ($ModuleName in $script:ModulesToSync) {
    $ModuleSourcePath = Join-Path $ModulesSourceDir "modules\$ModuleName"
    $ModuleDestPath   = Join-Path $SourceDir "modules\$ModuleName"

    if (-not (Test-Path $ModuleSourcePath)) {
        Stop-Pipeline -Message ("Module '$ModuleName' not found at $ModuleSourcePath. " +
                                "Check -ModulesRepoUrl and -ModulesBranch.")
    }

    Write-Host " -> Syncing $ModuleName..."

    # /MIR mirrors the destination onto the source exactly, deleting anything on the
    # destination side that the source no longer has - the point of syncing from a live
    # branch rather than copying once. Robocopy's exit codes are a bitmask where 0-7 are all
    # success (0 = nothing to do, the rest describe what kind of change was made); only 8
    # and above are real failures, unlike every other tool this script calls.
    robocopy $ModuleSourcePath $ModuleDestPath /MIR /NFL /NDL /NJH /NJS /NP | Out-Null
    if ($LASTEXITCODE -ge 8) {
        Stop-Pipeline -Message "Syncing module '$ModuleName' failed (robocopy exit code $LASTEXITCODE)." -ExitCode $LASTEXITCODE
    }
}

Write-Host "[OK] Playerbot and dungeon-clear modules are up to date from Shyalya." -ForegroundColor Green
}

# ==============================================================================
# PIPELINE SUB-STEP (OPTIONAL): DYNAMIC CHERRY-PICK HOTFIXES
# ==============================================================================
if (-not [string]::IsNullOrEmpty($applyPatches)) {
    Write-Host "Evaluating dynamic hotfix runtime patches list..."

    $CommitHashesList = $applyPatches -split ';' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne "" }

    # 1. CRITICAL: Jump inside the cloned repository directory FIRST before calling Git
    Push-Location $SourceDir

    # 2. FORCE CLEANUP FIRST: If a previous pipeline run crashed, abort any stuck cherry-pick states immediately
    Write-Host "Cleaning up any stuck or unresolved repository states..."
    git cherry-pick --abort 2>$null

    # 3. Point the pipeline's patch remote at -PatchRemoteUrl.
    #    Named after the pipeline, not after a repository: this used to be 'penqle', a name
    #    someone is every bit as likely to have created themselves for the same upstream, and
    #    the run removed and recreated it on every pass. Removing a remote drops its
    #    remote-tracking refs, which leaves every local branch tracking it with a dangling
    #    upstream. Nothing here removes a remote any more - a 'penqle' from before this
    #    change is left alone, and belongs to whoever wants it.
    $TargetRemoteUrl = $PatchRemoteUrl
    $PatchRemote = "testlab-patches"
    git remote get-url $PatchRemote > $null 2>&1
    if ($LASTEXITCODE -eq 0) {
        git remote set-url $PatchRemote $TargetRemoteUrl
    } else {
        git remote add $PatchRemote $TargetRemoteUrl
    }
    Assert-LastExitCode -Message "Could not register the '$PatchRemote' git remote"

    # 4. Fetch the patch source, pruning what it no longer has.
    Write-Host "Fetching patch source $TargetRemoteUrl ..."
    git fetch $PatchRemote --prune
    Assert-LastExitCode -Message "git fetch from the '$PatchRemote' remote failed"

    # 5. Preserve any work in progress. This used to be a bare `git reset --hard HEAD` per
    #    patch, which silently destroyed every uncommitted local change in the source tree.
    #    Stashing keeps them recoverable with `git stash pop`.
    #
    #    Tracked files only. Cherry-pick refuses to start over modified tracked files, which
    #    is what this exists to clear; untracked ones do not stand in its way. Sweeping them
    #    up as well meant every run that followed a build stashed the build itself - bin/ is
    #    not in this repository's .gitignore - and each run left another stash behind, one of
    #    which quietly accumulated half a gigabyte of database dumps somebody had put in the
    #    source tree. A cherry-picked commit that adds a file already sitting there untracked
    #    still stops the run, and git names the file when it does.
    $WorkingTreeState = git status --porcelain --untracked-files=no
    if ($WorkingTreeState) {
        $StashLabel = "pipeline auto-stash $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
        Write-Warning "Uncommitted changes to tracked files detected in the source tree. Stashing them as '$StashLabel'."
        Write-Warning "Recover them afterwards with: git -C `"$SourceDir`" stash pop"
        git stash push -m $StashLabel
        Assert-LastExitCode -Message "Could not stash local changes before applying patches"
    }

    # 5b. Expand any branch or tag name in the list into the commits it carries.
    #
    # A hash-only list is fine for one hotfix and miserable for "does my pull request still
    # apply", which would mean naming every commit in it by hand. An entry that is not a hex
    # hash is treated as a ref and expanded to the commits it has that this checkout does
    # not, oldest first - the order cherry-pick wants. Everything below is unchanged and now
    # covers both kinds of entry, including the duplicate detection and the conflict abort.
    $ResolvedCommitList = @()

    foreach ($PatchEntry in $CommitHashesList) {
        if ($PatchEntry -match '^[0-9a-fA-F]{7,40}$') {
            $ResolvedCommitList += $PatchEntry
            continue
        }

        # The fetched remote copy wins over a same-named local branch: "-applyPatches my-fix"
        # should mean the remote's my-fix even when a stale local one is lying around.
        $ResolvedRef = $null
        foreach ($RefCandidate in @("$PatchRemote/$PatchEntry", $PatchEntry)) {
            git rev-parse --verify --quiet "$RefCandidate^{commit}" > $null 2>&1
            if ($LASTEXITCODE -eq 0) {
                $ResolvedRef = $RefCandidate
                break
            }
        }

        if (-not $ResolvedRef) {
            Pop-Location
            Stop-Pipeline -Message ("-applyPatches entry '$PatchEntry' is neither a commit hash nor a ref that " +
                                    "exists on $TargetRemoteUrl or in the local checkout.")
        }

        $RefCommits = @(git log "HEAD..$ResolvedRef" --format="%H" --reverse 2>$null)

        if ($RefCommits.Count -eq 0) {
            Write-Host " -> [SKIP] '$PatchEntry' ($ResolvedRef) carries nothing this checkout does not already have."
            continue
        }

        # A ref cut from a different lineage than the checkout expands to that whole lineage,
        # not to a pull request. Measured against Penqle's main: a Shyalya-based branch came
        # out at 590 commits, and cherry-picking those one at a time would grind through a
        # conflict storm before failing. A branch actually cut from the branch being built is
        # a handful of commits, so anything this far past that is the wrong base, not a big
        # pull request.
        $MaxPatchCommits = 50
        if ($RefCommits.Count -gt $MaxPatchCommits) {
            Pop-Location
            Stop-Pipeline -Message ("-applyPatches entry '$PatchEntry' ($ResolvedRef) carries $($RefCommits.Count) " +
                                    "commits that '$BranchName' does not - more than the $MaxPatchCommits this expects " +
                                    "of a branch under test.`n" +
                                    "That is the signature of a branch cut from a different base than the one being " +
                                    "built. Check that -BranchName names the branch it was actually cut from, or list " +
                                    "the commit hashes explicitly instead of the branch name.")
        }

        Write-Host " -> '$PatchEntry' resolves to ${ResolvedRef}: $($RefCommits.Count) commit(s) to apply."
        $ResolvedCommitList += $RefCommits
    }

    $CommitHashesList = $ResolvedCommitList

    foreach ($CommitHash in $CommitHashesList) {
        Write-Host "Processing signature checks for patch entry: $CommitHash"

        # 1. Retrieve the unique commit subject/message directly from the remote reference
        $CommitSubject = git log $CommitHash -n 1 --format="%s" 2>$null

        # 2. Check if this exact text subject already exists anywhere inside our local branch history
        $IsAlreadyInTree = $false
        if (-not [string]::IsNullOrEmpty($CommitSubject)) {
            $DuplicateCheck = git log -n 100 --format="%s" | Where-Object { $_ -eq $CommitSubject }
            if ($DuplicateCheck) { $IsAlreadyInTree = $true }
        }

        # Extra search safety backup using hash text grepping inside the active branch logs layout
        $CommitInLog = git log -n 100 --format="%H" | Where-Object { $_ -eq $CommitHash }

        if (-not $IsAlreadyInTree -and -not $CommitInLog) {
            Write-Host "Applying runtime custom code patch ($CommitHash) via automated cherry-pick stream..." -ForegroundColor Yellow

            # 3. Trigger the code injection stitching
            git cherry-pick $CommitHash

            if ($LASTEXITCODE -ne 0) {
                # If Git tells us the patch became empty, it means the changes are already fully present.
                # In that case, we gracefully skip the error and don't abort the build workspace context.
                $StatusOutput = git status
                if ($StatusOutput -match "cherry-pick is now empty") {
                    git cherry-pick --skip 2>$null
                    Write-Host " -> [OK] Custom patch $CommitHash was already integrated into the active layout tree." -ForegroundColor Green
                } else {
                    git cherry-pick --abort
                    Pop-Location
                    Stop-Pipeline -Message "CRITICAL: Cherry-pick collision conflict detected on hash $CommitHash. Patch dropped and pipeline stopped - resolve it manually before rebuilding."
                }
            } else {
                Write-Host " -> [OK] Custom patch $CommitHash compiled into active local build history layout." -ForegroundColor Green
            }
        } else {
            Write-Host " -> [SKIP] Custom patch hash $CommitHash (or its content) is already active in current history tree." -ForegroundColor Green
        }
    }

    # 6. Safely return back to the root pipeline workspace
    Pop-Location
}
}
# ==============================================================================
# PIPELINE STEP (OPTIONAL): CONDITIONAL BACKUP SECTION: EXPORT ENTIRE DATABASE STRUCTURES
# ==============================================================================
# IMPORTANT: this is the pipeline's only protection for the character data. Step 05 imports
# create_databases.sql, which carries `USE tw_char;` plus DROP TABLE for every table in it -
# so tw_char IS wiped further down even with -SkipBotRegen, and only the restore below puts
# it back. An unnoticed bad dump here therefore means permanent data loss, which is why the
# result is verified before the pipeline is allowed to touch anything.
if ($SkipBotRegen) {
    Write-PipelineHeader -StepName "(OPTIONAL): Conditional step: export entire database structure and data"
	Write-Host "Parameter -SkipBotRegen is active. Generating full database dumps..."

    # $MySQLDumpPath was resolved next to the client and verified in the preflight.

    # Ensure a temporary backup directory exists on the disk layout
    New-Item -ItemType Directory -Path $BackupFolder -Force | Out-Null

    $TargetDbs = @($CharacterDatabaseName, $LoginDatabaseName)

    foreach ($DbName in $TargetDbs) {
        $BackupFile = Join-Path $BackupFolder "${DbName}_backup.sql"
        Write-Host " -> Exporting complete database: $DbName -> $($BackupFile)"

        # --result-file lets mysqldump write the file itself. Piping it through PowerShell
        # into Set-Content re-encoded the dump (ANSI on Windows PowerShell 5.1) and mangled
        # every non-ASCII character name, guild name and mail body in it.
        # --routines and --triggers ensure full feature set preservation.
        & $MySQLDumpPath "--defaults-extra-file=$($script:RootDefaultsFile)" `
                         --default-character-set=utf8mb4 `
                         --routines --triggers `
                         "--result-file=$BackupFile" `
                         $DbName
        Assert-LastExitCode -Message "mysqldump of '$DbName' failed - refusing to continue, your data is still intact"

        # Verify the dump really is a complete one before anything destructive runs.
        # mysqldump closes every successful dump with a '-- Dump completed' trailer.
        if (-not (Test-Path $BackupFile)) {
            Stop-Pipeline -Message "mysqldump reported success but produced no file for '$DbName'. Aborting before any data is dropped."
        }

        $BackupSize = (Get-Item $BackupFile).Length
        $BackupTail = Get-Content -Path $BackupFile -Tail 5 -ErrorAction SilentlyContinue

        if ($BackupSize -lt 1024 -or -not ($BackupTail -match 'Dump completed')) {
            Stop-Pipeline -Message ("Backup of '$DbName' looks truncated ($BackupSize bytes, no 'Dump completed' trailer). " +
                                    "Aborting before any data is dropped. File kept at: $BackupFile")
        }

        Write-Host "   [OK] Database '$DbName' fully backed up and verified ($BackupSize bytes)." -ForegroundColor Green
    }
}

# ==============================================================================
# PIPELINE STEP 04: PIPELINE INITIALIZATION: CLEANUP PREVIOUS ENVIRONMENT
# ==============================================================================
# STEP 1: Environment Cleanup
Write-PipelineHeader -StepName "04: Environment Cleanup"
Write-Host "Stopping active server instances and dropping previous databases..."
# Define the path to the MySQL binary for early cleanup tasks
$BinDir  = Join-Path $InstallDir $MangosBinDir
$EtcDir  = Join-Path $InstallDir $MangosEtcDir
$LibDir  = Join-Path $InstallDir $MangosLibDir
$LogsDir  = Join-Path $InstallDir $MangosLogsDir
$PdumpDir  = Join-Path $InstallDir $MangosPDumpDir
$HonorDir  = Join-Path $InstallDir $MangosHonorDir
$ToolsDir = Join-Path $InstallDir $MangosToolsDir
$LuaDir = Join-Path $InstallDir $MangosLuaDir

Write-Host "Initializing pipeline cleanup sequence..."

# 1. Terminate any running server processes to release database and file locks
Write-Host "Stopping any active server instances..."
Stop-Process -Name "mangosd", "realmd" -ErrorAction SilentlyContinue

# Allow a brief moment for processes to gracefully release network ports and file descriptors
Start-Sleep -Seconds 2

# Clear previously generated server subdirectories.
# Only these subdirectories are removed - the server root itself (and the launcher .bat
# files and the mariadb installation sitting in it) is left untouched.
#
# modules\ is cmake --install's own raw drop point for a module's .conf.dist (see step 09
# point 6b) - not the etc\modules\ the server actually reads from, which lives inside
# $EtcDir and is already covered by that entry. It carries no operator data, so unlike
# pdump it is cleared unconditionally: left in place, a module removed or renamed
# between builds would leave its old .conf.dist here forever, and step 09 would keep
# copying that stale file into etc\modules\ on every run after $EtcDir was wiped clean.
#
# pdump is the exception under -SkipBotRegen, honor is not - despite looking like the same
# kind of per-character data at a glance, they are not. Checked against the engine source:
#   pdump/  - PlayerDumpWriter/PlayerDumpReader (Commands.cpp, Player.cpp) read AND write
#             here: ".pdump write"/".pdump load", and an automatic export on character
#             delete. This is the only copy of that data anywhere - nothing in any database
#             holds it - so wiping it under -SkipBotRegen was silent, unrecoverable loss on
#             the one run whose stated purpose is preserving existing data.
#   honor/  - HonorMaintenancer::CreateCalculationReport() (HonorMgr.cpp) only ever WRITES a
#             timestamped human-readable report here; nothing reads it back. The state that
#             actually matters - last/next maintenance day, the toggle marker - is written
#             to tw_char.saved_variables by ToggleMaintenanceMarker()/SetMaintenanceDays(),
#             a table -SkipBotRegen already backs up and restores. The folder holds nothing
#             -SkipBotRegen's own database backup does not already cover, so it is cleared
#             unconditionally like logs/tools/lua_scripts.
#
# Skipped entirely under -DatabaseOnly: nothing gets rebuilt by cmake --install this run,
# so there is nothing to clear a path for - bin/etc/lib would simply stay gone.
if ($DatabaseOnly) {
    Write-Host " -> Keeping the server folders as they are (-DatabaseOnly)."
} else {
    Write-Host "Clearing previously generated server directories..."
    $GeneratedFolders = @($BinDir, $EtcDir, $LibDir, $LogsDir, $ToolsDir, $LuaDir, $HonorDir, (Join-Path $InstallDir "modules"))

    if ($SkipBotRegen) {
        Write-Host " -> Keeping pdump (-SkipBotRegen preserves existing data)."
    } else {
        $GeneratedFolders += @($PdumpDir)
    }
    foreach ($Folder in $GeneratedFolders) {
        if (Test-Path $Folder) {
            # Recursively remove all contents and the folder itself
            Remove-Item -Path $Folder -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host " -> Removed directory: $Folder"
        }
    }
}

# Drop existing test databases based on the pipeline arguments.
# The client was resolved and the server proved reachable in the preflight, so there is
# nothing left to test for here.
Write-Host "Dropping previous testbed databases..."

# Core infrastructure databases that are ALWAYS dropped and rebuilt
Invoke-MySqlQuery -Query "DROP DATABASE IF EXISTS $WorldDatabaseName; DROP DATABASE IF EXISTS $LoginDatabaseName; DROP DATABASE IF EXISTS $LogsDatabaseName;" `
                  -FailureMessage "Could not drop the $WorldDatabaseName / $LoginDatabaseName / $LogsDatabaseName databases"

if (-not $SkipBotRegen) {
    Write-Host " -> Parameter -SkipBotRegen not active. Dropping characters database..."
    Invoke-MySqlQuery -Query "DROP DATABASE IF EXISTS $CharacterDatabaseName;" -FailureMessage "Could not drop the $CharacterDatabaseName database"
} else {
    Write-Host " -> [SKIP] Parameter -SkipBotRegen is active. Retaining existing character and playerbot data." -ForegroundColor Green
}
Write-Host "[OK] Target databases cleanup sequence completed." -ForegroundColor Green

# ==============================================================================
# PIPELINE STEP 05: DATABASE GENERATION AND IMPORTS
# ==============================================================================
Write-PipelineHeader -StepName "05: Database Generation & Imports"
Write-Host "Starting database structure setup..."

# Create default databases containers (tw_world, tw_char, tw_logon, tw_logs)
if (-not (Test-Path $CreateDatabasesSql)) {
    Stop-Pipeline -Message "Database schema script is missing, cannot create any database: $CreateDatabasesSql"
}

Write-Host "Creating databases..."
Invoke-MySqlFile -Path $CreateDatabasesSql -RenameDatabases $DatabaseNameMap -FailureMessage "Importing create_databases.sql failed"

# Bulk import all base world SQL files with safety filters enabled
if (-not (Test-Path $SqlBaseDirectory)) {
    Stop-Pipeline -Message "Base world SQL directory is missing: $SqlBaseDirectory"
}

Write-Host "Importing base world SQL files..."
Get-ChildItem "$SqlBaseDirectory\*.sql" | Sort-Object Name | ForEach-Object {
    Write-Host "Importing: $($_.Name)"
    Invoke-MySqlFile -Path $_.FullName -Database $WorldDatabaseName -FailureMessage "Importing a base world SQL file failed"
}

# ==============================================================================
# PIPELINE STEP 06: DATABASE USER CONFIGURATION
# ==============================================================================
Write-PipelineHeader -StepName "06: The 'mangos' user has been configured"
Write-Host "Configuring database user 'mangos'..."

# The password comes from $DbPassword rather than a literal, so changing the parameter
# cannot leave step 13 authenticating with a password that was never set.
#
# Spelled as CREATE USER + ALTER USER + plain GRANTs rather than the shorter
# "GRANT ... IDENTIFIED BY", which MySQL 8 removed: creating a user implicitly through
# GRANT is a syntax error there (ERROR 1064), while MariaDB still accepts it. This form
# works on MariaDB 10.1+ and MySQL 5.7+ alike. ALTER USER follows CREATE USER IF NOT
# EXISTS so an existing account picks up the current password instead of silently keeping
# an old one.
# The host part used to be the literal 'localhost' while -DbHost was honoured everywhere
# else. Against a remote server that produced an account this machine can never
# authenticate as: the account was created as mangos@'localhost' ON THE REMOTE SERVER,
# which then saw the connection arriving from this machine's address and answered
# "Access denied for user 'mangos'@'<client ip>'" - with all four databases already
# dropped and rebuilt, and a mangosd.conf that could not have connected either.
#
# '%' rather than a guess at this machine's address: which of its addresses the server
# sees depends on routing, NAT and name resolution, and getting it wrong fails exactly as
# before. -DbAccountHost narrows it down when that matters.
$AccountHost = $DbAccountHost

if ([string]::IsNullOrWhiteSpace($AccountHost)) {
    $LocalDbHosts = @("", "localhost", "127.0.0.1", "::1", ".")
    if ($LocalDbHosts -contains $DbHost.Trim()) {
        $AccountHost = "localhost"
    } else {
        $AccountHost = "%"
        Write-Warning ("-DbHost is '$DbHost', so the '$DbUser' account is created as " +
                       "'$DbUser'@'%' - a local-only account could not be used from this " +
                       "machine. Pass -DbAccountHost to narrow that down.")
    }
}

Write-Host " -> Account host: '$DbUser'@'$AccountHost'"

$UserQuery = @"
CREATE USER IF NOT EXISTS '$DbUser'@'$AccountHost' IDENTIFIED BY '$DbPassword';
ALTER USER '$DbUser'@'$AccountHost' IDENTIFIED BY '$DbPassword';
GRANT ALL PRIVILEGES ON $WorldDatabaseName.* TO '$DbUser'@'$AccountHost';
GRANT ALL PRIVILEGES ON $CharacterDatabaseName.* TO '$DbUser'@'$AccountHost';
GRANT ALL PRIVILEGES ON $LoginDatabaseName.* TO '$DbUser'@'$AccountHost';
GRANT ALL PRIVILEGES ON $LogsDatabaseName.* TO '$DbUser'@'$AccountHost';
FLUSH PRIVILEGES;
"@

Invoke-MySqlQuery -Query $UserQuery -FailureMessage "Could not configure the 'mangos' database user"

# ==============================================================================
# PIPELINE STEP (OPTIONAL): CONDITIONAL RESTORE SECTION (IMPORT FULL DATABASE DUMPS)
# ==============================================================================
if ($SkipBotRegen) {
    Write-PipelineHeader -StepName "(OPTIONAL): Restoring original character and logon datasets"
    Write-Host "Restoring preserved production databases from mysqldump files..."

    $TargetDbs    = @($CharacterDatabaseName, $LoginDatabaseName)

    foreach ($DbName in $TargetDbs) {
        $BackupFile = Join-Path $BackupFolder "${DbName}_backup.sql"

        if (Test-Path $BackupFile) {
            Write-Host " -> Re-importing complete database dump: $DbName..."

            # 1. Clean out the temporary blank pipeline database and build a fresh container.
            #    utf8mb4 to match create_databases.sql - recreating these as plain utf8 left
            #    the database default out of step with every other database in the set.
            Invoke-MySqlQuery -Query "DROP DATABASE IF EXISTS $DbName; CREATE DATABASE $DbName DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;" `
                              -FailureMessage "Could not recreate the '$DbName' database for the restore"

            # 2. Stream the backup file back into active service database
            Invoke-MySqlFile -Path $BackupFile -Database $DbName -FailureMessage "Restoring '$DbName' failed - the backup file is kept"

            # 3. Clean up the backup file from the disk to keep the environment tidy.
            #    Only reached when the import above succeeded; on failure Invoke-MySqlFile
            #    stops the pipeline and the dump stays on disk.
            Remove-Item -Path $BackupFile -Force

            Write-Host "   [OK] Database '$DbName' (including all triggers/routines) successfully restored." -ForegroundColor Green
        } else {
            Stop-Pipeline -Message "Backup file for '$DbName' is missing at $BackupFile - the database was already dropped, so stopping here rather than leaving it empty."
        }
    }

    # Remove the temporary backup folder, but only when it really is empty.
    #
    # Remove-Item -Force without -Recurse does not quietly skip a non-empty directory: it
    # raises a confirmation prompt, and -ErrorAction SilentlyContinue suppresses errors, not
    # prompts. Under Run-Testlab.bat the console is attached, so the run stopped dead at its
    # last line waiting for a keypress with no timeout. That is reachable whenever the
    # folder holds a dump this run did not consume - an earlier run under a different
    # -DbPrefix that aborted after taking its own backup, say.
    #
    # Those files are somebody's database dumps, so they are reported and kept rather than
    # recursively deleted.
    if (Test-Path $BackupFolder) {
        $LeftOverBackups = @(Get-ChildItem -LiteralPath $BackupFolder -Force -ErrorAction SilentlyContinue)

        if ($LeftOverBackups.Count -eq 0) {
            Remove-Item -LiteralPath $BackupFolder -Force -ErrorAction SilentlyContinue
        } else {
            Write-Warning ("$BackupFolder still holds $($LeftOverBackups.Count) file(s) from an earlier run, " +
                           "so it is kept: " + (($LeftOverBackups | Select-Object -First 5 |
                                                 ForEach-Object { $_.Name }) -join ", "))
        }
    }
}

# ==============================================================================
# PIPELINE STEP 07: INJECT MISSING HONOR MAINTENANCE TABLES
# ==============================================================================
Write-PipelineHeader -StepName "07: PIPELINE HOTFIX: inject missing honor maintenance tables"
Write-Host "Applying database hotfixes for Honor Maintenance system..."
# We dynamically clone the structure of character_inventory to ensure compatibility
# and prevent mangosd.exe from crashing due to the missing copy table artifact.
$HonorHotfixQuery = @"
    USE $CharacterDatabaseName;
    CREATE TABLE IF NOT EXISTS character_inventory_copy LIKE character_inventory;
"@

Invoke-MySqlQuery -Query $HonorHotfixQuery -FailureMessage "Could not create the character_inventory_copy hotfix table"
Write-Host "[OK] Honor maintenance hotfix table 'character_inventory_copy' successfully deployed." -ForegroundColor Green

# ==============================================================================
# PIPELINE STEP 08: CMAKE CONFIGURATION AND COMPILATION
# ==============================================================================
if ($DatabaseOnly) {
    Write-Host "08: Compilation and Build - skipped (-DatabaseOnly touches only the databases)." -ForegroundColor DarkGray
} else {
Write-PipelineHeader -StepName "08: Compilation and Build"
Write-Host "Initializing project build and compilation sequence..."

# Define local vcpkg absolute paths for dependencies mapping
# $VcpkgInstalledPath was derived from the resolved vcpkg directory in step 00.

# The build log this step promises the user. Everything MSBuild prints is teed into it, so
# the "check server_build.log" advice on a failure actually leads somewhere.
$BuildLogPath = Join-Path $ScriptDirectory "server_build.log"

# 1. Clean previous build configuration to ensure fresh static linking
if (Test-Path $BuildDir) {
    Write-Host "Cleaning up previous build directories..."
    Remove-Item -Path $BuildDir -Recurse -Force -ErrorAction SilentlyContinue
}

# 2. Configure project generators using CMake with playerbots and extractors flags
#
# USE_PCH_OLD=OFF is required alongside USE_PCH=OFF: the /FI fallback in
# src/game/CMakeLists.txt only runs when USE_PCH_OLD is off, and it defaults to ON for MSVC.
# BUILD_PLAYERBOTS=ON is required alongside MODULE_MOD_PLAYERBOTS=static: the module's
# sources compile either way, but mod-playerbots.cmake returns early without it and the
# module never receives its compile definitions or the botpch.h force-include.
$CmakeArguments = @(
    "-B", $BuildDir,
    "-S", $SourceDir,
    "-A", "x64",
    "-DCMAKE_INSTALL_PREFIX=$InstallDir",
    "-DUSE_EXTRACTORS=ON",
    "-DBUILD_MODULES=ON",
    "-DBUILD_EXTENSIONS=ON",
    "-DBUILD_MODS=ON",
    "-DUSE_PCH=OFF",
    "-DUSE_PCH_OLD=OFF",
    "-DCMAKE_DISABLE_PRECOMPILE_HEADERS=ON",
    "-DACE_ROOT=$VcpkgInstalledPath",
    "-DBOOST_ROOT=$VcpkgInstalledPath")

# The module flags are the whole difference between a full testlab and a core-only build.
# "disabled" is one of the linkage values the module system itself defines (see
# cmake/ConfigureModules.cmake), so this is the supported way to leave a module out rather
# than something bolted on here.
if ($WithBots) {
    $CmakeArguments += @(
        "-DBUILD_PLAYERBOTS=ON",
        "-DMODULE_MOD_PLAYERBOTS=static",
        "-DMODULE_MOD_DUNGEON_CLEAR=static")
} else {
    $CmakeArguments += @(
        "-DBUILD_PLAYERBOTS=OFF",
        "-DMODULE_MOD_PLAYERBOTS=disabled",
        "-DMODULE_MOD_DUNGEON_CLEAR=disabled")
}

Invoke-NativeLogged -Executable "cmake" -Arguments $CmakeArguments
Assert-LastExitCode -Message "CMake configuration failed - the build was never started"

Write-Host "Compiling server binaries via MSBuild Release configuration..."
Write-Host " -> Compilation log written to: $BuildLogPath (Please wait, this takes a few minutes...)"

cmake --build $BuildDir --config Release 2>&1 | Tee-Object -FilePath $BuildLogPath

# $LASTEXITCODE survives the Tee-Object pipeline and still reports cmake's own result.
if ($LASTEXITCODE -ne 0) {
    Stop-Pipeline -Message "Compilation step failed. Check $BuildLogPath for detailed compiler error codes." -ExitCode $LASTEXITCODE
}
Write-Host "[OK] Binary compilation successfully completed." -ForegroundColor Green
}

# ==============================================================================
# PIPELINE STEP 09: INSTALLATION AND DIRECTORY RESTRUCTURING
# ==============================================================================
if ($DatabaseOnly) {
    Write-Host "09: Installation and directory restructuring - skipped (-DatabaseOnly touches only the databases)." -ForegroundColor DarkGray
} else {
Write-PipelineHeader -StepName "09: Installation and directory restructuring"
Write-Host "Installing compiled modules into production environment..."

# 1. Execute default CMake install into temporary root folder
Invoke-NativeLogged -Executable "cmake" -Arguments @("--install", $BuildDir, "--config", "Release")
Assert-LastExitCode -Message "CMake install step failed"

# 2. Ensure all structured directories exist
New-Item -ItemType Directory -Path $BinDir -Force | Out-Null
New-Item -ItemType Directory -Path $LibDir -Force | Out-Null
New-Item -ItemType Directory -Path $EtcDir -Force | Out-Null
New-Item -ItemType Directory -Path $ToolsDir -Force | Out-Null

Write-Host "Restructuring server directory into $MangosBinDir/ and $MangosLibDir/ layouts..."

# 3. Delete all debug symbol files (.pdb) to save disk space and clean up the deployment
Get-ChildItem -Path $InstallDir -Filter "*.pdb" | Remove-Item -Force -ErrorAction SilentlyContinue

# 4. Sort and isolate executable binaries (.exe) into $MangosBinDir/ and $MangosToolsDir/
Get-ChildItem -Path $InstallDir -Filter "*.exe" | ForEach-Object {
    if ($_.Name -eq "mangosd.exe" -or $_.Name -eq "realmd.exe") {
        # Keep core server engine executables inside the primary bin folder
        Move-Item -Path $_.FullName -Destination $BinDir -Force
        Write-Host " -> Deployed Core: $($_.Name) -> $MangosBinDir/"
    } else {
        # Move map extractors and other auxiliary binaries into the tools folder
        Move-Item -Path $_.FullName -Destination $ToolsDir -Force
        Write-Host " -> Deployed Tool: $($_.Name) -> $MangosToolsDir/"
    }
}

# 5. Move configuration templates (.conf.dist) into $MangosInstalationDir/$MangosEtcDir for cleaner management
Get-ChildItem -Path $InstallDir -Filter "*.conf.dist" | Move-Item -Destination $EtcDir -Force

# 6. Generate working configuration files from templates (.dist)
Write-Host "Generating working configuration files from templates inside $MangosInstalationDir/$MangosEtcDir..."
Get-ChildItem -Path $EtcDir -Filter "*.conf.dist" | ForEach-Object {
    # Determine the target filename by stripping '.dist' extension
    $TargetConfigName = $_.Name -replace '\.dist$', ''
    $DestinationPath  = Join-Path $EtcDir $TargetConfigName

    # Copy template to the final configuration file
    Copy-Item -Path $_.FullName -Destination $DestinationPath -Force
    Write-Host " -> Generated: $TargetConfigName"
}

# 6b. The same again for module configuration, which lands somewhere else entirely.
#
# On Windows, CopyModuleConfig (cmake/ConfigureModules.cmake) installs a module's
# .conf.dist to "<install prefix>\modules" - so server\modules\mod_dungeon_clear.conf.dist.
# The server, however, reads module configuration from "<config directory>\modules": see
# Config.cpp, which builds that path from the directory of the file passed to -c, i.e.
# server\etc\modules. Nothing connected the two, and step 5 above only globs the install
# root non-recursively, so mod_dungeon_clear.conf was never generated at all and the module
# silently ran on its built-in defaults.
$ModuleTemplateDir = Join-Path $InstallDir "modules"
$ModuleEtcDir      = Join-Path $EtcDir "modules"
$ModuleTemplates   = @(Get-ChildItem -Path $ModuleTemplateDir -Filter "*.conf.dist" -File -ErrorAction SilentlyContinue)

if ($ModuleTemplates.Count -gt 0) {
    New-Item -ItemType Directory -Path $ModuleEtcDir -Force | Out-Null

    foreach ($ModuleTemplate in $ModuleTemplates) {
        $ModuleConfigName = $ModuleTemplate.Name -replace '\.dist$', ''

        # The template is kept beside the generated file, matching what step 5 leaves in etc\.
        Copy-Item -Path $ModuleTemplate.FullName -Destination (Join-Path $ModuleEtcDir $ModuleTemplate.Name) -Force
        Copy-Item -Path $ModuleTemplate.FullName -Destination (Join-Path $ModuleEtcDir $ModuleConfigName) -Force
        Write-Host " -> Generated module config: $MangosEtcDir\modules\$ModuleConfigName"
    }
}

Write-Host "[OK] Configuration files successfully generated." -ForegroundColor Green

# 7. Deploy every runtime DLL into $MangosLibDir.
#
# The executables live in bin/ and Windows does not search a sibling lib/ folder on its own -
# the generated launcher scripts (step 15) are what makes this work, by prepending
# "%~dp0lib" to PATH before starting the server. Keep the two in sync: moving these DLLs
# elsewhere without updating the launchers leaves mangosd.exe unable to load ACE.dll.
Write-Host "Deploying runtime dependency libraries (.dll) into $MangosInstalationDir/$MangosLibDir..."

# Bundled OpenSSL and MySQL DLLs generated by the install step
Get-ChildItem -Path $InstallDir -Filter "*.dll" | Move-Item -Destination $LibDir -Force

# External ACE and Boost dependencies from the vcpkg toolchain
$VcpkgBinDir = Join-Path $VcpkgInstalledPath "bin"
foreach ($DependencyPattern in @("ACE.dll", "boost_*.dll")) {
    $SourcePattern = Join-Path $VcpkgBinDir $DependencyPattern
    if (-not (Get-ChildItem -Path $SourcePattern -ErrorAction SilentlyContinue)) {
        Stop-Pipeline -Message "Required runtime dependency is missing from the vcpkg toolchain: $SourcePattern"
    }
    Copy-Item -Path $SourcePattern -Destination $LibDir -Force
}

Write-Host "[OK] Run-time dependency environments fully deployed to $MangosInstalationDir/$MangosLibDir." -ForegroundColor Green
Write-Host "[OK] Files were set up." -ForegroundColor Green
}

# ==============================================================================
# PIPELINE STEP 10: CONFIGURATION INJECTION & TUNING
# ==============================================================================
if ($DatabaseOnly) {
    Write-Host "10: CONFIGURATION INJECTION & TUNING - skipped (-DatabaseOnly touches only the databases)." -ForegroundColor DarkGray
} else {
Write-PipelineHeader -StepName "10: CONFIGURATION INJECTION & TUNING"
Write-Host "Applying automated modifications to configuration files..."

$MangosdConf = Join-Path $EtcDir "mangosd.conf"

if (Test-Path $MangosdConf) {
    Write-Host "Injecting custom database, maps, and system directory configurations..."

    # 1. Database AutoUpdate Path regex pattern and replacement
    $OldUpdatePath     = 'Database\.AutoUpdate\.Path\s*=\s*"\.\./\.\./sql/database_updates/"'
    $NewUpdatePath = "Database.AutoUpdate.Path = `"../" + $MangosTortoiseSourceDir + "/sql/database_updates/`""

    # 2. System directories regex patterns (capturing whatever is currently inside quotes)
    $OldDataDirPattern  = '^DataDir\s*=\s*".*"'
    $OldLogsDirPattern  = '^LogsDir\s*=\s*".*"'
    $OldHonorDirPattern = '^HonorDir\s*=\s*".*"'
    $OldPDumpDirPattern  = '^PDumpDir\s*=\s*".*"'
	$OldLuaDirPattern  = '^Eluna\.ScriptPath\s*=\s*".*"'
    $OldLogSqlPattern   = '^LogSQL\s*=\s*.*'
    $OldLogLevelPattern = '^LogLevel\s*=\s*.*'
    $OldVisibilityBgPattern = '^Visibility\.Distance\.BG\s*=\s*.*'

    # 3. Targeted system directories replacement values
    $NewDataDirSetting  = "DataDir = `"$MangosDataDir`""
    $NewLogsDirSetting  = "LogsDir = `"$MangosLogsDir`""
    $NewHonorDirSetting = "HonorDir = `"$MangosHonorDir`""
    $NewPDumpDirSetting  = "PDumpDir = `"$MangosPDumpDir`""
    $NewLuaDirSetting   = "Eluna.ScriptPath = `"$MangosLuaDir`""

    # -EnableSqlLog / -LogLevel: see the parameter help for why these default lower than the
    # shipped templates (LogSQL = 1, LogLevel = 1). Both are plain integers, never touched by
    # the -replace $ hazard the connection strings below are guarded against.
    $NewLogSqlSetting   = "LogSQL = " + $(if ($EnableSqlLog) { 1 } else { 0 })
    $NewLogLevelSetting = "LogLevel = $LogLevel"

    # The shipped 533 trips World.cpp's own clamp: it is read into m_MaxVisibleDistanceInBG,
    # and "m_MaxVisibleDistanceInBG + m_VisibleUnitGreyDistance > MAX_VISIBILITY_DISTANCE"
    # is true at 533, so the server logs "Visibility.Distance.BG can't be greater 532.333313"
    # and clamps it to that value anyway on every single start. 532 sits under the clamp, so
    # the server keeps the value as given and the line never fires - same effective distance,
    # one less ERROR line at every startup.
    $NewVisibilityBgSetting = "Visibility.Distance.BG = 532"

    # 4. Database connection strings, in the "host;port;user;password;database" form the
    #    server parses.
    #
    #    The shipped templates hard-code 127.0.0.1;3306;mangos;mangos;tw_* and nothing used
    #    to rewrite them. That was wrong in three ways at once even before the databases
    #    became renameable: -DbPassword, -DbUser, -DbHost and -DbPort all changed what the
    #    pipeline connected with while the server kept being told the template's values, so
    #    anything but the defaults produced a server that could not log in to its own
    #    databases. All four lines are now written from the settings actually in use.
    $ConfHost = if ([string]::IsNullOrWhiteSpace($DbHost)) { "127.0.0.1" } else { $DbHost }
    $ConfPort = if ($DbPort -gt 0) { $DbPort } else { 3306 }

    $OldLoginInfoPattern     = '^LoginDatabase\.Info\s*=\s*".*"'
    $OldWorldInfoPattern     = '^WorldDatabase\.Info\s*=\s*".*"'
    $OldCharacterInfoPattern = '^CharacterDatabase\.Info\s*=\s*".*"'
    $OldLogsInfoPattern      = '^LogsDatabase\.Info\s*=\s*".*"'

    $NewLoginInfoSetting     = "LoginDatabase.Info = `"$ConfHost;$ConfPort;$DbUser;$DbPassword;$LoginDatabaseName`""
    $NewWorldInfoSetting     = "WorldDatabase.Info = `"$ConfHost;$ConfPort;$DbUser;$DbPassword;$WorldDatabaseName`""
    $NewCharacterInfoSetting = "CharacterDatabase.Info = `"$ConfHost;$ConfPort;$DbUser;$DbPassword;$CharacterDatabaseName`""
    $NewLogsInfoSetting      = "LogsDatabase.Info = `"$ConfHost;$ConfPort;$DbUser;$DbPassword;$LogsDatabaseName`""

    # 5. Read content, execute every replacement sequentially, and stream back to file.
    #    Every replacement value is plain text, so it goes through
    #    ConvertTo-ReplacementLiteral - without it a $ in a password, user name, host or
    #    path is read as a regex substitution directive and silently rewritten.
    (Get-Content $MangosdConf) `
        -replace $OldUpdatePath, (ConvertTo-ReplacementLiteral $NewUpdatePath) `
        -replace $OldDataDirPattern, (ConvertTo-ReplacementLiteral $NewDataDirSetting) `
        -replace $OldLogsDirPattern, (ConvertTo-ReplacementLiteral $NewLogsDirSetting) `
        -replace $OldHonorDirPattern, (ConvertTo-ReplacementLiteral $NewHonorDirSetting) `
        -replace $OldPDumpDirPattern, (ConvertTo-ReplacementLiteral $NewPDumpDirSetting) `
        -replace $OldLuaDirPattern, (ConvertTo-ReplacementLiteral $NewLuaDirSetting) `
        -replace $OldLogSqlPattern, $NewLogSqlSetting `
        -replace $OldLogLevelPattern, $NewLogLevelSetting `
        -replace $OldVisibilityBgPattern, $NewVisibilityBgSetting `
        -replace $OldLoginInfoPattern, (ConvertTo-ReplacementLiteral $NewLoginInfoSetting) `
        -replace $OldWorldInfoPattern, (ConvertTo-ReplacementLiteral $NewWorldInfoSetting) `
        -replace $OldCharacterInfoPattern, (ConvertTo-ReplacementLiteral $NewCharacterInfoSetting) `
        -replace $OldLogsInfoPattern, (ConvertTo-ReplacementLiteral $NewLogsInfoSetting) `
        | Set-Content $MangosdConf

    Write-Host "[OK] mangosd.conf updated: directories, all four database connections, and logging (LogSQL=$(if ($EnableSqlLog) { 1 } else { 0 }), LogLevel=$LogLevel)." -ForegroundColor Green
} else {
    Stop-Pipeline -Message "Configuration injection failed: Could not locate mangosd.conf inside $MangosEtcDir"
}

# realmd reads only the login database, and spells the key without the dot.
$RealmdConf = Join-Path $EtcDir "realmd.conf"

if (Test-Path $RealmdConf) {
    $ConfHost = if ([string]::IsNullOrWhiteSpace($DbHost)) { "127.0.0.1" } else { $DbHost }
    $ConfPort = if ($DbPort -gt 0) { $DbPort } else { 3306 }

    $NewRealmdLoginInfoSetting = "LoginDatabaseInfo = `"$ConfHost;$ConfPort;$DbUser;$DbPassword;$LoginDatabaseName`""

    (Get-Content $RealmdConf) `
        -replace '^LoginDatabaseInfo\s*=\s*".*"', (ConvertTo-ReplacementLiteral $NewRealmdLoginInfoSetting) `
        -replace '^LogLevel\s*=\s*.*', "LogLevel = $LogLevel" `
        | Set-Content $RealmdConf

    Write-Host "[OK] realmd.conf updated with the login database connection and logging (LogLevel=$LogLevel)." -ForegroundColor Green
} else {
    Stop-Pipeline -Message "Configuration injection failed: Could not locate realmd.conf inside $MangosEtcDir"
}
}

# ==============================================================================
# PIPELINE STEP 11: PLAYERBOTS MODULE DATA IMPORT
# ==============================================================================
if (-not $WithBots) {
    Write-Host "11: PlayerBots module SQL import - skipped (no -WithBots)." -ForegroundColor DarkGray
} else {
Write-PipelineHeader -StepName "11: Importing PlayerBots module SQL data..."
Write-Host "Importing PlayerBots module SQL data..."

$PlayerBotSqlDir = Join-Path $ScriptDirectory "$MangosTortoiseSourceDir\modules\mod-playerbots\sql"
$WorldSqlPath    = Join-Path $PlayerBotSqlDir "world"
$ClassicSqlPath  = Join-Path $PlayerBotSqlDir "world\classic"
$CharSqlPath     = Join-Path $PlayerBotSqlDir "characters"

# Import PlayerBot world modifications if directories exist
if (Test-Path $WorldSqlPath) {
    Get-ChildItem (Join-Path $WorldSqlPath "*.sql"), (Join-Path $ClassicSqlPath "*.sql") -ErrorAction SilentlyContinue | ForEach-Object {
        Write-Host "Importing PlayerBot World: $($_.Name)"
        Invoke-MySqlFile -Path $_.FullName -Database $WorldDatabaseName -FailureMessage "Importing a PlayerBot world SQL file failed"
    }
} else {
    Write-Warning "PlayerBot world SQL directory not found at: $WorldSqlPath"
}

# Import PlayerBot character modifications if directory exists AND regeneration is not skipped
if ($SkipBotRegen) {
    Write-Host " -> [SKIP] Skipping PlayerBot Characters database import due to -SkipBotRegen parameter." -ForegroundColor Yellow
} elseif (Test-Path $CharSqlPath) {
    Get-ChildItem (Join-Path $CharSqlPath "*.sql") | ForEach-Object {
        Write-Host "Importing PlayerBot Characters: $($_.Name)"
        Invoke-MySqlFile -Path $_.FullName -Database $CharacterDatabaseName -FailureMessage "Importing a PlayerBot characters SQL file failed"
    }
} else {
    Write-Warning "PlayerBot characters SQL directory not found at: $CharSqlPath"
}
}

# ==============================================================================
# PIPELINE STEP 12: PLAYERBOT CONFIGURATION TUNING
# ==============================================================================
if ($DatabaseOnly -or (-not $WithBots)) {
    $Step12SkipReason = if ($DatabaseOnly) { "-DatabaseOnly touches only the databases" } else { "no -WithBots" }
    Write-Host "12: PLAYERBOT CONFIGURATION TUNING - skipped ($Step12SkipReason)." -ForegroundColor DarkGray
} else {
$AiPlayerbotConf = Join-Path $EtcDir "aiplayerbot.conf"
Write-PipelineHeader -StepName "12: PLAYERBOT CONFIGURATION TUNING"
if (Test-Path $AiPlayerbotConf) {
	Write-Host "Injecting optimized testlab scaling parameters into aiplayerbot..."

    # 1. Define regex patterns to capture the default/existing configuration values.
    #    There is no 'AiPlayerbot.RandomBotAccount' key in aiplayerbot.conf.dist - the real
    #    ones are RandomBotAccountPrefix and RandomBotAccountCount - so the replacement that
    #    used to target it (with an undefined $NewBotAccSetting) was removed rather than
    #    given a value: the prefix is left at whatever the shipped template defines.
    $OldMinBotsPattern = '^AiPlayerbot\.MinRandomBots\s*=\s*.*'
    $OldMaxBotsPattern = '^AiPlayerbot\.MaxRandomBots\s*=\s*.*'
	$OldRandomBotMinLevelPattern = '^AiPlayerbot\.RandomBotMinLevel\s*=\s*.*'
	$OldRandomBotMaxLevelPattern = '^AiPlayerbot\.RandomBotMaxLevel\s*=\s*.*'
	$OldRandomBotAccountCountPattern  = '^AiPlayerbot\.RandomBotAccountCount\s*=\s*.*'

    # 2. Define the new optimized target settings for fast testbed scaling
    $NewMinBotsSetting = "AiPlayerbot.MinRandomBots = $MinRandomBots"
    $NewMaxBotsSetting = "AiPlayerbot.MaxRandomBots = $MaxRandomBots"
	$NewRandomBotMinLevelSetting = "AiPlayerbot.RandomBotMinLevel = $RandomBotMinLevel"
	$NewRandomBotMaxLevelSetting = "AiPlayerbot.RandomBotMaxLevel = $RandomBotMaxLevel"
	$NewRandomBotAccountCountSetting  = "AiPlayerbot.RandomBotAccountCount = $RandomBotAccountsCount"

    # 3. Read content, execute chained text replacements, and save back to file
    (Get-Content $AiPlayerbotConf) `
        -replace $OldMinBotsPattern, $NewMinBotsSetting `
        -replace $OldMaxBotsPattern, $NewMaxBotsSetting `
		-replace $OldRandomBotMinLevelPattern,  $NewRandomBotMinLevelSetting  `
		-replace $OldRandomBotMaxLevelPattern,  $NewRandomBotMaxLevelSetting  `
		-replace $OldRandomBotAccountCountPattern,  $NewRandomBotAccountCountSetting  `
        | Set-Content $AiPlayerbotConf

    Write-Host "[OK] aiplayerbot.conf successfully downscaled using global variables." -ForegroundColor Green
} else {
    Stop-Pipeline -Message "Configuration injection failed: Could not locate aiplayerbot.conf inside $EtcDir"
}
}


# ==============================================================================
# PIPELINE STEP 13: REALMLIST AND CONFIGURATION SETUP
# ==============================================================================
Write-PipelineHeader -StepName "13: Configuring local realmlist DB options..."
Write-Host "Configuring local realmlist options..."

# Update realm configuration to point to local testbed environment on port $RealmlistPort
$RealmlistQuery = @"
    INSERT INTO realmlist (id, name, address, port, icon, realmflags, timezone, allowedSecurityLevel)
    VALUES (1, 'TurtleWoW Local', '$RealmlistIPAddress', $RealmlistPort, 0, 0, 1, 0)
    ON DUPLICATE KEY UPDATE address='$RealmlistIPAddress', port=$RealmlistPort;
"@

Invoke-MySqlQuery -Query $RealmlistQuery `
                  -Database $LoginDatabaseName `
                  -DefaultsFile $script:DbDefaultsFile `
                  -FailureMessage "Could not register the local realm in $LoginDatabaseName.realmlist"

Write-Host "[OK] Realmlist points at ${RealmlistIPAddress}:$RealmlistPort." -ForegroundColor Green

# ==============================================================================
# PIPELINE STEP 14: RUNTIME APPLICATION DIRECTORY FACTORY
# ==============================================================================
# This step MUST run after 'cmake --install' and config edits to prevent CMake
# from wiping the newly created directories during its clean deployment phase.
Write-PipelineHeader -StepName "14: RUNTIME APPLICATION DIRECTORY FACTORY"
Write-Host "Creating missing runtime directories in the server root..."

# Explicitly map the production paths matching your updated mangosd.conf parameters
$RuntimeLogsDir  = Join-Path $InstallDir $MangosLogsDir
$RuntimeHonorDir = Join-Path $InstallDir $MangosHonorDir
$RuntimeDumpDir  = Join-Path $InstallDir $MangosPDumpDir
$RuntimeLuaDir   = Join-Path $InstallDir $MangosLuaDir

$RequiredRuntimeFolders = @($RuntimeLogsDir, $RuntimeHonorDir, $RuntimeDumpDir, $RuntimeLuaDir)

foreach ($Folder in $RequiredRuntimeFolders) {
    if (-not (Test-Path $Folder)) {
        # Generate the folders and suppress empty terminal return objects via Out-Null
        New-Item -ItemType Directory -Path $Folder -Force | Out-Null
        Write-Host " -> Created runtime directory: $Folder"
    } else {
        Write-Host " -> Directory already exists: $Folder"
    }
}

# ==============================================================================
# PIPELINE STEP 15: SERVER LAUNCHER SCRIPTS
# ==============================================================================
# The three .bat files an operator actually double-clicks. They are generated only when
# missing, so a fresh clone gets a working set and an existing, hand-tuned one is preserved.
#
# The realm/world launchers put "%~dp0lib" on PATH first: the executables are in bin/ while
# their runtime DLLs are in lib/ (step 09), and Windows would not find them otherwise.
if ($DatabaseOnly) {
    Write-Host "15: SERVER LAUNCHER SCRIPTS - skipped (-DatabaseOnly touches only the databases)." -ForegroundColor DarkGray
} else {
Write-PipelineHeader -StepName "15: SERVER LAUNCHER SCRIPTS"
Write-Host "Verifying server launcher scripts..."

# The port the generated launcher probes and starts mysqld on. -DbPort tells the pipeline
# where the database is; a launcher that ignored it started the portable server on its
# built-in default and then reported the wrong port to the operator.
$LauncherDbPort = if ($DbPort -gt 0) { $DbPort } else { 3306 }

$MysqlLauncherContent = @"
@echo off
:: mysqld resolves its datadir RELATIVE to the working directory, so it has to start from
:: its own bin folder - launched from anywhere else it dies with
:: "Can't change dir to ...\..\data\ (Errcode: 2)".
::
:: "cd /d %~dp0..." rather than a bare "cd <folder>": %~dp0 is this file's own directory,
:: so the launcher works whatever directory it is started from - a bare relative cd only
:: worked when the shell happened to sit in the server folder - and /d also crosses drives.
cd /d "%~dp0$MariaDbFolderName\bin"
if errorlevel 1 (
    echo Could not enter "%~dp0$MariaDbFolderName\bin".
    echo Is the portable MariaDB in place, and is its folder still named "${MariaDbFolderName}"?
    pause
    exit /b 1
)

:: A second instance cannot bind the port, and its console window closes immediately -
:: which looks exactly like "the database will not start" when it is in fact already up.
::
:: "/c:" on the second findstr is not optional. Without it the argument is split on
:: whitespace into separate search strings, the trailing space that anchors the end of the
:: port is discarded, and the port then matches as a bare substring: MySQL 8's X protocol
:: on 33060, or a tunnel on 13306, was read as "already running" and mysqld was never
:: started. With /r /c: the whole thing is one pattern, so both the colon in front and the
:: space behind have to be there.
netstat -ano | findstr /r /c:"LISTENING" | findstr /r /c:":$LauncherDbPort " >nul
if not errorlevel 1 (
    echo MariaDB is already running on port $LauncherDbPort - nothing to do.
    pause
    exit /b 0
)

start "mysql" mysqld.exe --console --port=$LauncherDbPort
"@

$RealmLauncherContent = @"
@echo off
:: Prepend the local 'lib' folder to PATH for this process only, so realmd.exe
:: finds the runtime DLLs the pipeline deploys there.
set PATH=%~dp0lib;%PATH%

:: Run the realm (login) server against its configuration file
bin\realmd.exe -c etc\realmd.conf

pause
"@

$WorldLauncherContent = @"
@echo off
:: Prepend the local 'lib' folder to PATH for this process only, so mangosd.exe
:: finds the runtime DLLs the pipeline deploys there.
set PATH=%~dp0lib;%PATH%

:: Run the world server against its configuration file
bin\mangosd.exe -c etc\mangosd.conf

pause
"@

New-ServerLauncherScript -Path (Join-Path $InstallDir "1.Start mysql.bat")  -Content $MysqlLauncherContent
New-ServerLauncherScript -Path (Join-Path $InstallDir "2.Realm server.bat") -Content $RealmLauncherContent
New-ServerLauncherScript -Path (Join-Path $InstallDir "3.World server.bat") -Content $WorldLauncherContent

Write-Host "[OK] Server launcher scripts are in place." -ForegroundColor Green
}

# Release the run lock and singleton, drop the temporary credential files and close the
# transcript on the success path too.
Remove-PipelineLock
Remove-PipelineSingleton
Remove-PipelineCredentialFiles
Write-Host "[OK] Pipeline execution fully completed! Server environment is ready." -ForegroundColor Green
try { Stop-Transcript | Out-Null } catch { }
