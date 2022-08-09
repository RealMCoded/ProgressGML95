/// @description

//44 play
//122 stop
//121 bottom

if open {
	//Play
	if point_in_rectangle(mouse_x, mouse_y, xx+21, yy+98, xx+44, yy+121) {
		audio_play_sound(global.sound.mainGameMus, 1, 1)
	}
	//Stop
	if point_in_rectangle(mouse_x, mouse_y, xx+99, yy+98, xx+122, yy+121) {
		audio_stop_sound(global.sound.mainGameMus)
	}
}