@echo off
echo close goose
taskkill/f /im goosedesktop.exe || close goose failed
echo delete shortcut
DEL /Q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" || delete shortcut failed
echo delete secondary installer
DEL /Q "%USERPROFILE%\Documents\InstallGoose.bat" || delete secondary installer failed
set loc=%USERPROFILE%\Documents\Goose
echo delete assets
DEL /Q %loc%\Assets || delete assets failed
echo delete dll
DEL /Q %loc%\MMQ.dll || delete MMQ.dll failed
DEL /Q %loc%\GooseModdingAPI.dll || delete GooseModdingAPI.dll failed
echo delete config
DEL /Q %loc%\config.ini || delete config failed
::echo delete bat
::DEL /Q %LOC%\*.bat || delete bat failed
echo delete exe
DEL /Q %loc%\GooseDesktop.exe || delete exe failed
attrib -h %USERPROFILE%\Documents\Goose /s /d

Set objArgs = WScript.Arguments
messageText = objArgs(0)
MsgBox The "Goose" folders under "Documents" is remaining
pause
start /b "" cmd /c rd /s /q "%USERPROFILE%\Documents\Goose"
