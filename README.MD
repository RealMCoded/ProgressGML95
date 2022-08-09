<div align="center">
<img src="./options/main/template_icon.png" width="100" height="100" alt="The Progressbar95 logo but with a Game Maker logo cutout.">

# ProgressGML95
</div>

A clone of [Progressbar95](https://www.spookyhousestudios.com/s/2021/09/21/progressbar95-retro-arcade/) made in GameMaker that i created for fun.

**Note: This project is not affiliated with [Spooky House Studios UG (haftungsbeschraenkt)](https://www.spookyhousestudios.com/) in any way. All assets (except for the code) belong to them. This is simply a fan recreation.**

## Download

You can download the game from [here](https://github.com/RealMCoded/ProgressGML95/releases). I release an update whenever i want, there is no fixed times for when i update.

## Why do i require a copy of Progressbar95 to play?

This is to prevent copyright issues. So instead of me cloning the Progressbar95 sprites, the game loads them from Progressbar95's install directory.

## How do i get sound working?

Due to how GameMaker's sound system works, i cannot simply play the sound effects from the install directory because they are MP3 files. You need to use `sound-converter-win.bat` to convert them to ogg files.

Running the file by itself will show this:
```


ProgressGML95 Sound Converter Tool
For a full tutorial, check out https://github.com/Progressbar-Discord-Server/ProgressGML95#how-do-i-get-sound-working

!!!ERROR!!! ffmpeg.exe was not found in the current directory.

If you need a copy of ffmpeg, you may download one from here: https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip

Extract the file called "ffmpeg.exe" located in bin to this directory.

Press any key to continue . . . 
```

For this tool to work, you require FFmpeg ([click here to download the latest build](https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip)). Extract `FFmpeg.exe` from the archive (it should be located in the `bin` folder) and place it in the same location as `sound-converter-win.bat`.

When you run the batch script, it should look like this:
```


ProgressGML95 Sound Converter Tool
For a full tutorial, check out https://github.com/Progressbar-Discord-Server/ProgressGML95#how-do-i-get-sound-working


Input the locaton of Progressbar95's sound folder (it should be \Resources\sound)
Example: "C:\Program Files (x86)\Steam\steamapps\common\Progressbar95\Resources\sound"

```

If you haven't moved the install location for your steam games, then `"C:\Program Files (x86)\Steam\steamapps\common\Progressbar95\Resources\sound"` should work. 

If you have changed your install directory, You can drag and drop the sound folder onto the window and it will autofill the location.

When you have the locaton entered, just press ENTER and it will do the rest!

## Building

To build, you need to use the newest version of GameMaker. My main target is for Windows, but other desktop targets should work as well.

Download/clone this repository and open it with GameMaker and press "Run".

## Reditribution

You are free to redistribute ProgressGML95, as long as you follow some of these simple rules:
- If you have made any modifications, make them open source!
- Link back to this original repo (if it's a fork, you may link back to your fork.)
- Do not include any of the original Progressbar95 assets in your redistributions.