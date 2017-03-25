@echo off
:: by bugnofree 12:39 2017Äê3ÔÂ14ÈÕ


:: The following code segments to get admin permission is from:
:: http://stackoverflow.com/questions/1894967/how-to-request-administrator-access-inside-a-batch-file
::-------------------------------------
REM  --> Check for permissions
IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0" 


::nircmdc is downloaded form http://www.nirsoft.net/utils/nircmd.html
::To create shortcut run "nircmdc shortcut target-file dest-folder link-name"
:: Here I use %~dp0 to expand the script's folder path and %userprofile% to expand
:: user's home directory
:: Create link for notepad2
%~dp0"nircmdc" shortcut  %~dp0"../notepad2/Notepad2.exe"  %userprofile%"\AppData\Roaming\Microsoft\Windows\SendTo\" TOOLS[notepad2]
:: Create link for scylla
%~dp0"nircmdc" shortcut  %~dp0"../scylla/Scylla_x86.exe"  %userprofile%"\AppData\Roaming\Microsoft\Windows\SendTo\" TOOLS[scylla]
:: Create link for exeinfo
%~dp0"nircmdc" shortcut  %~dp0"../exeinfo/exeinfope.exe"  %userprofile%"\AppData\Roaming\Microsoft\Windows\SendTo\" TOOLS[exeinfo]
:: Create link for dup2
%~dp0"nircmdc" shortcut  %~dp0"../dup2/dup2.exe"  %userprofile%"\AppData\Roaming\Microsoft\Windows\SendTo\" TOOLS[dup2]

