///@param system

//Define the system style
global.system = argument[0]

//Load save data for that system
ini_open("save.ini")
global.level = ini_read_real(global.system, "level", 1)
ini_close()

if global.system = "CYRUS" global.installLocation = program_directory //ez work around ha

//Define assets
global.wallpaper[0] = sprite_add(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system +"\\sky.png", 1, 0, 1, 0, 0)

if file_exists(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system +"\\wallpaper1.png"){
	global.wallpaper[1] = sprite_add(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system +"\\wallpaper1.png", 1, 0, 1, 0, 0) 
} else if file_exists(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system +"\\wallpaper1.jpg"){
	global.wallpaper[1] = sprite_add(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system +"\\wallpaper1.jpg", 1, 0, 1, 0, 0) 
}else {
	global.wallpaper[1] = global.wallpaper[0]
}

global.sprite[0] = sprite_add(global.installLocation + "\\art\\skins\\" + global.system +"\\logo.png", 1, 0, 0, 256, 128)

global.sprite[1] = sprite_add(global.installLocation + "\\art\\skins\\" + global.system +"\\gui.png", 1, 0, 0, 0, 0)

sprite_replace(spr_bar, global.installLocation + "\\art\\skins\\" + global.system +"\\progressbarpanel.png", 1, 0, 0, 66, 22)

//TODO: FIX BAR COLISION

//Go to the room
draw_set_font(global.font[1])
room_goto(rm_bootGraphic)