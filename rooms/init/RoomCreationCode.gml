randomize()

//Does nothing rn but is nice to have rn
ini_open("save.ini")
global.installLocation = ini_read_string("general", "installLocation","UNSPECIFIED")

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

#region Load Assets

#region Sprites - ALL OF THESE ARE PLACEHOLDERS AT FIRST
global.sprite[0] = spr_null //
#endregion

#region Backgrounds
#endregion

#region Sounds
#endregion

#endregion

room_goto_next()