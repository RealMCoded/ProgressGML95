/// @description
switch part{
	case 0: {
		if selected = 0 {
			ask_for_install_location()
			part = 1
		} else {
			game_end()	
		}
	}break;
	case 1: {
		if selected = 0 {
			ini_open("save.ini")
			ini_write_string("general", "installLocation", global.installLocation)	
			ini_close()
			game_restart()
		} else {
			ask_for_install_location()
		}
	}break;
}