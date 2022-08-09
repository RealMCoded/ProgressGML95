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

global.sprite = {
	loading_icon: spr_null,
	gui: spr_null,
	window: spr_null,
	clippy_norm: spr_null
}

global.wallpaper = {
	loading: spr_null,
	wallpaper:[
		spr_null
	]
}

//Preload common sounds
global.sound = {
	ambient: audio_create_stream("sounds\\ambient_bigrobot.ogg"),
	collect_segment_general: [
		audio_create_stream("sounds\\jump1.ogg"),
		audio_create_stream("sounds\\jump3.ogg")
	],
	collect_segment_correct_2: audio_create_stream("sounds\\jump2.ogg"),
	//collect_segment_wrong: audio_create_stream("sounds\\jump3.ogg"),
	collect_segment_minus: audio_create_stream("sounds\\jump5.ogg"),
	click: audio_create_stream("sounds\\click.ogg"),
	mainGameMus: audio_create_stream("sounds\\pb_theme_mp3.ogg")
}

global.font = {
	DOSFont: font_add(global.installLocation + "\\Fonts\\DOSFont.ttf", 12, false, false, 32, 127),
	progresspixel: font_add(global.installLocation + "\\Fonts\\progresspixel.ttf", 12, false, false, 32, 127)
}

window_set_caption("ProgressGML95 [" + version + "]")

var my = audio_play_sound(global.sound.ambient, 1000, 1)
audio_sound_gain(my, 0.5, 1000)
cursor_sprite = spr_cursor
room_goto_next()