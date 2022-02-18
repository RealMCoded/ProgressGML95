///@param system

//Define the system style
global.system = argument[0]

//Load save data for that system
ini_open("save.ini")
global.level = ini_read_real(global.system, "level", 1)
ini_close()

//Define assets
global.sprite[0] = sprite_add(global.installLocation + "\\wallpapers.desktop\\skins\\95\\wallpaper6.png", 1, 0, 1, 0, 0)

sprite_replace(spr_bar, global.installLocation + "\\art\\skins\\95\\progressbarpanel.png", 1, 0, 0, 66, 22) 

//Go to the room.
room_goto(rm_bootGraphic)