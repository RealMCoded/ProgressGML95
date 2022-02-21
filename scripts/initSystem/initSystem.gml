///@param system

//Define the system style
global.system = argument[0]

//Load save data for that system
ini_open("save.ini")
global.level = ini_read_real(global.system, "level", 1)
ini_close()

//Define assets
global.sprite[0] = sprite_add(global.installLocation + "\\wallpapers.desktop\\skins\\" + global.system +"\\sky.png", 1, 0, 1, 0, 0)

/*switch global.system {
	case "95": global.sprite[1] = sprite_add(global.installLocation + "\\art\\skins\\" + global.system +"\\logo.png", 1, 0, 0, 512, 256) break;
	case "95plus": global.sprite[1] = sprite_add(global.installLocation + "\\art\\skins\\" + global.system +"\\logo.png", 1, 0, 0, 256, 128) break;
	default: break;	
}*/

global.sprite[1] = sprite_add(global.installLocation + "\\art\\skins\\" + global.system +"\\logo.png", 1, 0, 0, 256, 128)

sprite_replace(spr_bar, global.installLocation + "\\art\\skins\\" + global.system +"\\progressbarpanel.png", 1, 0, 0, 66, 22) 

//Go to the room.
room_goto(rm_bootGraphic)

//audio_play_sound_ext(global.installLocation + "\\sound\\starthdd.mp3", 3, 0) //gm can't play MP3s :(