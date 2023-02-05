:: C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource\overviews
@echo off

del /q "Simple%%20Radar.zip"
rmdir /s /q "Simple Radar"

TITLE Downloading Simple Radar zip...
echo Downloading Simple Radar zip...
curl -O https://files.readtldr.com/sr/Color1Pat1Buy1Spec1/Simple%%20Radar.zip
echo:
echo Downloading Finished

TITLE Extracting...
echo:
echo Extracting...
tar -xf "Simple%%20Radar.zip"
echo:
echo Extraction Finished

cd "Simple Radar"

TITLE Copying files to destination...
echo:
echo Copying files to destination...
xcopy /v /s /q /y ".\01 default" "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource\overviews"

xcopy /v /s /q /y ".\02 spectate" "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource\overviews"
echo:
echo Copying Finished

TITLE Deleting Downloaded and Extracted Files...
echo:
cd ..
echo Deleting Downloaded and Extracted Files...
del /q "Simple%%20Radar.zip"
rmdir /s /q "Simple Radar"
echo:
echo Deleting Finished

pause
exit