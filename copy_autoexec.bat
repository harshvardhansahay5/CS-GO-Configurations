@echo off

:choice
set /P c=Fetch Latest Updates From GitHub[Y/N]?
if /I "%c%" EQU "Y" goto :gitpull
if /I "%c%" EQU "N" goto :xcopy_code
goto :choice

:gitpull
git pull

:xcopy_code
xcopy /v /q /y ".\autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg"

exit