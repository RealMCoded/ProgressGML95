function initSystem(system) {

	//Define the system style

	global.system = {
		id: system,
		style: 0
	}

	//Load save data for that system
	ini_open("save.ini")
	global.level = ini_read_real(global.system.id, "level", 1)
	ini_close()

	if global.system.id = "CYRUS" global.installLocation = program_directory //ez work around ha

	//Define assets
	global.wallpaper[0] = sprite_add(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system.id +"\\sky.png", 1, 0, 1, 0, 0)


	//Set wallpaper
	if file_exists(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system.id +"\\wallpaper1.png"){
		global.wallpaper[1] = sprite_add(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system.id +"\\wallpaper1.png", 1, 0, 1, 0, 0) 
	} else if file_exists(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system.id +"\\wallpaper1.jpg"){
		global.wallpaper[1] = sprite_add(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system.id +"\\wallpaper1.jpg", 1, 0, 1, 0, 0) 
	} else { //If no file is found just use the loading screen png
		global.wallpaper[1] = global.wallpaper[0]
	}

	global.sprite[0] = sprite_add(global.installLocation + "\\art\\skins\\" + global.system.id +"\\logo.png", 1, 0, 0, 256, 128)

	global.sprite[1] = sprite_add(global.installLocation + "\\art\\skins\\" + global.system.id +"\\gui.png", 1, 0, 0, 0, 0)

	sprite_replace(spr_bar, global.installLocation + "\\art\\skins\\" + global.system.id +"\\progressbarpanel.png", 1, 0, 0, 66, 22)

	global.sprite[2] = sprite_add_from_sprite(global.sprite[1], 210, 80, 184, 184)
	
	//Ser 9 slice
	var _nineslice = sprite_nineslice_create();

	_nineslice.enabled = true;
	_nineslice.left = 60;
	_nineslice.right = 60;
	_nineslice.top = 60;
	_nineslice.bottom = 60;

	sprite_set_nineslice(global.sprite[2], _nineslice);

	//draw_sprite_part(global.sprite[1], 0, 210, 80, 184, 184, x, y)

	//Go to the room
	draw_set_font(global.font[1])
	room_goto(rm_bootGraphic)
}
