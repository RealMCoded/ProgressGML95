/// @description u win
//TEMPORARY WIN CODE. REWORK THIS!
	global.level++
	ini_open("save.ini")
	ini_write_real(global.system, "level", global.level)
	ini_close()
	instance_destroy()
	instance_create_layer(room_width/2, room_height/2, layer, obj_bar)
	instance_create_layer(0, -64, layer_get_id("GameElements"), spawner)