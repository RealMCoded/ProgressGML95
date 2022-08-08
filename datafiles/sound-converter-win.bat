@echo off
title ProgressGML95 Sound Converter Tool
echo.
echo.
echo ProgressGML95 Sound Converter Tool
echo.
echo.

if not exist ffmpeg.exe (
	rundll32 user32.dll,MessageBeep
	echo !!!ERROR!!! ffmpeg.exe was not found in the current directory.
	echo.
	echo If you need a copy of ffmpeg, you may download one from here: https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip
	echo.
	echo Extract the file called "ffmpeg.exe" located in bin to this directory.
	echo.
	pause
	exit
)

echo Input the locaton of Progressbar95's sound folder (it should be \Resources\sound)
echo Example: C:\Program Files (x86)\Steam\steamapps\common\Progressbar95\Resources\sound
set /p INSTALLDIR=
Xcopy /E /I %INSTALLDIR% temp
mkdir temp\sounds
for /r temp\ %%a in (*.mp3) do ffmpeg -i "%%a" "%%~pa%%~na.ogg"
cd temp
move *.ogg sounds
move sounds ..\sounds
cd ..
rmdir /s /q temp
rmdir /s /q sounds/sounds

echo.
echo.
echo Conversion done! You may now delete ffmpeg.exe and this file.
echo.
echo.
pause