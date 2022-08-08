//show funny log message just for fun haha :)
show_debug_message("///////////////////////////////////////////////////////////////////////////\n//                                                                       //\n//                           PROGRESS GML 95                             //\n//                                                                       //\n///////////////////////////////////////////////////////////////////////////")

randomize() //Randomization so the game isn't the same every time

global.pause=0

ini_open("save.ini")
global.installLocation = ini_read_string("general", "installLocation","UNSPECIFIED")

show_debug_message("INSTALL LOCATION: " + global.installLocation)

if global.installLocation = "UNSPECIFIED"{
	//Warn the user that they require a copy of the game
	show_message("A PC copy of Progressbar95 is required to play.\n\nPlease specify the game's install location.")
	
	//Open a file dialog and ask for the location. It defaults to C:\Program Files (x86)\Steam\steamapps\common\Progressbar95\Resources\
	global.installLocation = get_open_filename_ext("Progressbar95 resource.car|resource.car", "resource.car", "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Progressbar95\\Resources\\", "Select Progressbar95's resource.car file.")
	
	//Remove the "resources.car" thing (we don't need it for anything)
	global.installLocation = string_replace(global.installLocation, "resource.car", "")
	
	//Ask if it was correct
	i = show_question(global.installLocation + "\n\nIs this correct?")
	if i = 0 game_restart() else {
		ini_write_string("general", "installLocation", global.installLocation)	
	}
	
}
ini_close()

global.useSounds = directory_exists("sounds")

#region Load Assets - ALL OF THESE ARE PLACEHOLDERS AT FIRST

#region Sprites
global.sprite[0] = spr_null //Loading icon
global.sprite[1] = spr_null //GUI
global.sprite[2] = spr_null //Window
#endregion

#region Backgrounds
global.wallpaper[0] = spr_null //Loading bg
global.wallpaper[1] = spr_null //Wallpaper1
#endregion

#region Sounds

//TODO: Preload common sounds

#endregion

#region fonts

global.font[0] = font_add(global.installLocation + "\\Fonts\\DOSFont.ttf", 12, false, false, 32, 127) //DOSFont

global.font[1] = font_add(global.installLocation + "\\Fonts\\progresspixel.ttf", 12, false, false, 32, 127) //progresspixel

#endregion

#endregion

room_goto_next()