@echo off
REM ===========================================================================
REM  Testlab pipeline launcher.
REM
REM  Runs Setup-Testlab.ps1 without you having to touch the machine's execution
REM  policy first. "-ExecutionPolicy Bypass" on this command line applies to
REM  THIS PowerShell process only - it changes nothing permanently, needs no
REM  administrator rights, and does exactly what
REM  "Set-ExecutionPolicy Bypass -Scope Process -Force" did, minus the
REM  remembering. It also covers the mark-of-the-web that Windows attaches to a
REM  script downloaded or cloned from the internet.
REM
REM  "-NoProfile" keeps your PowerShell profile out of the run, so the pipeline
REM  behaves the same on every machine.
REM
REM  Every argument is forwarded, so all the script's parameters work here:
REM      Run-Testlab.bat -SkipBotRegen
REM      Run-Testlab.bat -WorkspaceRoot C:\WOW\testlab -VcpkgDirectory D:\vcpkg
REM      Run-Testlab.bat -BranchName my-topic-branch
REM ===========================================================================

setlocal

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Setup-Testlab.ps1" %*
set "PIPELINE_EXITCODE=%ERRORLEVEL%"

REM Keep the window open on failure so a double-clicked run does not vanish
REM before the error can be read. A successful run just returns.
if not "%PIPELINE_EXITCODE%"=="0" (
    echo.
    echo Pipeline failed with exit code %PIPELINE_EXITCODE%.
    echo Full transcript: pipeline_console.log in the workspace root.
    pause
)

exit /b %PIPELINE_EXITCODE%
