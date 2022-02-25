/// @description
if !instance_exists(obj_bar) and !instance_exists(obj_GameEnd) {
	instance_create_layer(room_width/2, room_height/2, layer_get_id("GameElements"), obj_bar)
	instance_create_layer(0, -64, layer_get_id("GameElements"), spawner)
	instance_create_layer(0, 0, layer_get_id("GameElements"), obj_popup_spawn)
} else {
	clicked = !clicked
	global.pause = !global.pause
}