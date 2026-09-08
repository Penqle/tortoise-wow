@echo off
REM ===========================================================================
REM  Testlab pipeline launcher.
REM
REM  A convenience wrapper, not a requirement: Setup-Testlab.ps1 runs perfectly
REM  well on its own. This forwards every argument, keeps your PowerShell
REM  profile out of the run so the pipeline behaves the same on every machine,
REM  and holds the window open on failure so a double-clicked run does not
REM  vanish before the error can be read.
REM
REM  It deliberately does NOT pass -ExecutionPolicy. Running the pipeline is
REM  your decision to make, not this file's to make for you. If your policy
REM  does not allow local scripts, the check below says so and tells you what
REM  to run.
REM
REM      Run-Testlab.bat -SkipBotRegen
REM      Run-Testlab.bat -WorkspaceRoot C:\WOW\testlab -VcpkgDirectory D:\vcpkg
REM      Run-Testlab.bat -BranchName my-topic-branch
REM ===========================================================================

setlocal

for /f "usebackq delims=" %%P in (`powershell.exe -NoProfile -Command "Get-ExecutionPolicy"`) do set "PS_POLICY=%%P"

if /i "%PS_POLICY%"=="Restricted" goto :policy_blocked
if /i "%PS_POLICY%"=="AllSigned"  goto :policy_blocked

powershell.exe -NoProfile -File "%~dp0Setup-Testlab.ps1" %*
set "PIPELINE_EXITCODE=%ERRORLEVEL%"

if not "%PIPELINE_EXITCODE%"=="0" (
    echo.
    echo Pipeline failed with exit code %PIPELINE_EXITCODE%.
    echo Full transcript: pipeline_console.log in the workspace root.
    pause
)

exit /b %PIPELINE_EXITCODE%

:policy_blocked
echo.
echo PowerShell's execution policy is '%PS_POLICY%', which does not allow this
echo script to run. To allow it for this session only, leaving the machine
echo setting untouched:
echo.
echo     Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
echo.
echo Then run Setup-Testlab.ps1, or this launcher, from that same window.
echo A copy cloned from the internet may also carry a mark-of-the-web that
echo blocks it under RemoteSigned; Unblock-File clears that:
echo.
echo     Get-ChildItem "%~dp0*.ps1" ^| Unblock-File
echo.
pause
exit /b 1
