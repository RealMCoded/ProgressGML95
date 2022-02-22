///@param system

//Define the system style
global.system = argument[0]

//Load save data for that system
ini_open("save.ini")
global.level = ini_read_real(global.system, "level", 1)
ini_close()

if global.system = "CYRUS" global.installLocation = program_directory

//Define assets
global.sprite[0] = sprite_add(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system +"\\sky.png", 1, 0, 1, 0, 0)

global.sprite[1] = sprite_add(global.installLocation + "\\art\\skins\\" + global.system +"\\logo.png", 1, 0, 0, 256, 128)

sprite_replace(spr_bar, global.installLocation + "\\art\\skins\\" + global.system +"\\progressbarpanel.png", 1, 0, 0, 66, 22)

sprite_collision_mask(spr_bar, false, 2, 30, 26, 349, 57, bboxkind_rectangular, 155)

//Go to the room.
room_goto(rm_bootGraphic)