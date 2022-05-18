@echo off
print close goose
taskkill/f /im goosedesktop.exe || close goose failed
print delete shortcut
DEL "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" || delete shortcut failed
print delete secondary installer
DEL "%USERPROFILE%\Documents\InstallGoose.bat" || delete secondary installer failed
set loc=%USERPROFILE%\Documents\Goose
print delete assets
DEL %loc%\Assets || delete assets failed
print delete dll
DEL %loc%\MMQ.dll || delete MMQ.dll failed
DEL %loc%\GooseModdingAPI.dll || delete GooseModdingAPI.dll failed
print delete config
DEL %loc%\config.ini || delete config failed
::print delete bat
::DEL %LOC%\*.bat || delete bat failed
print Finished
attrib -h %USERPROFILE%\Documents\Goose /s /d
print Please delete the "Goose" folder in documents to finish
