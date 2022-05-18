@echo off
echo close goose
taskkill/f /im goosedesktop.exe || close goose failed
echo delete shortcut
DEL /Q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" || delete shortcut failed
echo delete secondary installer
DEL /Q "%USERPROFILE%\Documents\InstallGoose.bat" || delete secondary installer failed
set loc=%USERPROFILE%\Documents\Goose
echo delete assets
DEL /Q /S %loc%\Assets || delete assets failed
echo delete dll
DEL /Q %loc%\MMQ.dll || delete MMQ.dll failed
DEL /Q %loc%\GooseModdingAPI.dll || delete GooseModdingAPI.dll failed
echo delete config
DEL /Q %loc%\config.ini || delete config failed
::echo delete bat
::DEL /Q %LOC%\*.bat || delete bat failed
echo Finished
attrib -h %USERPROFILE%\Documents\Goose /s /d
echo Please delete the "Goose" folder in documents to finish
