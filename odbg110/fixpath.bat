:: @echo off
set ODDIR=%~dp0
set INI=%ODDIR%tools\inifile\inifile.exe

::To config Ollydbg's [History] section
%INI% %ODDIR%ollydbg.ini [History] "UDD path =%ODDIR%udds"
%INI% %ODDIR%ollydbg.ini [History] "Plugin path =%ODDIR%plugins"
%INI% %ODDIR%ollydbg.ini [History] "Import library =%ODDIR%lib"
%INI% %ODDIR%ollydbg.ini [History] "API help file =%ODDIR%help\win32.hlp"
%INI% %ODDIR%ollydbg.ini [History] "Symbolic data path =%ODDIR%symbols"



::Clear the history
%INI% %ODDIR%ollydbg.ini [History] "Executable[0] =="
%INI% %ODDIR%ollydbg.ini [History] "Executable[1] =="
%INI% %ODDIR%ollydbg.ini [History] "Executable[2] =="
%INI% %ODDIR%ollydbg.ini [History] "Executable[3] =="
%INI% %ODDIR%ollydbg.ini [History] "Executable[4] =="
%INI% %ODDIR%ollydbg.ini [History] "Executable[5] =="


::To config IDAFicator plugin
%INI% %ODDIR%ollydbg.ini [Plugin IDAFicator] "PATH_RADASM =%ODDIR%plugins\idaficator-tools"
%INI% %ODDIR%ollydbg.ini [Plugin IDAFicator] "PATH_HELP =%ODDIR%help\win32.hlp"


::To config MnemonicHelp plugin
%INI% %ODDIR%ollydbg.ini [Plugin MnemonicHelp] "opcode_help_file=%ODDIR%help\x86.hlp"

::To config Symbols plugin
%INI% %ODDIR%ollydbg.ini [Plugin Symbols on Demand] "search_path=SRV*%ODDIR%symbols*http://msdl.microsoft.com/download/symbols"

::To config libraries
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[0]=%ODDIR%lib\comctl32.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[1]=%ODDIR%lib\dbgeng.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[2]=%ODDIR%lib\dbghelp.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[3]=%ODDIR%lib\kernel32.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[4]=%ODDIR%lib\MFC42.Lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[5]=%ODDIR%lib\mfc42d.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[6]=%ODDIR%lib\mfc42u.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[7]=%ODDIR%lib\mfc42ud.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[8]=%ODDIR%lib\mfc71.Lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[9]=%ODDIR%lib\mfc71d.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[10]=%ODDIR%lib\mfc71u.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[11]=%ODDIR%lib\mfc71ud.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[12]=%ODDIR%lib\mfc80.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[13]=%ODDIR%lib\mfc80d.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[14]=%ODDIR%lib\mfc80u.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[15]=%ODDIR%lib\mfc80ud.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[16]=%ODDIR%lib\mfcd42d.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[17]=%ODDIR%lib\mfcd42ud.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[18]=%ODDIR%lib\mfcn42d.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[19]=%ODDIR%lib\mfcn42ud.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[20]=%ODDIR%lib\mfco42d.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[21]=%ODDIR%lib\mfco42ud.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[22]=%ODDIR%lib\MSVBVM50.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[23]=%ODDIR%lib\msvbvm60.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[24]=%ODDIR%lib\msvcp60.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[25]=%ODDIR%lib\msvcp71.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[26]=%ODDIR%lib\msvcp80.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[27]=%ODDIR%lib\MSVCR70.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[28]=%ODDIR%lib\msvcr71.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[29]=%ODDIR%lib\msvcr80.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[30]=%ODDIR%lib\msvcrt.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[31]=%ODDIR%lib\ntdll.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[32]=%ODDIR%lib\oleaut32.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[33]=%ODDIR%lib\oledlg.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[34]=%ODDIR%lib\ollydbg.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[35]=%ODDIR%lib\ws2_32.lib"
%INI% %ODDIR%ollydbg.ini [Import libraries] "Implib[36]=%ODDIR%lib\wsock32.lib"
