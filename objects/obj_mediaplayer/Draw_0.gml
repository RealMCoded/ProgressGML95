/// @description
var byeah = 0
draw_self()
draw_text(x-16, y+64, "Media Player")

if open {
	draw_sprite_ext(mediaPlayerAssets.baseWindow, 0, xx, yy, 1.5, 1.5, 0, c_white, 1)
	draw_set_color(#00ef00)
	draw_text_transformed(xx+57, yy+51, "00:00", 1.5, 1.5, 0)
	draw_text_transformed(xx+131, yy+66, "128", 0.8, 0.8, 0)
	
	draw_sprite_ext(mediaPlayerAssets.buttonBase, 0, xx+21, yy+98, 1.5, 1.5, 0, c_white, 1)
	draw_sprite_ext(mediaPlayerAssets.buttonPlay, 0, xx+21, yy+98, 1.5, 1.5, 0, c_white, 1)
	
	draw_sprite_ext(mediaPlayerAssets.buttonBase, 0, xx+99, yy+98, 1.5, 1.5, 0, c_white, 1)
	draw_sprite_ext(mediaPlayerAssets.buttonStop, 0, xx+99, yy+98, 1.5, 1.5, 0, c_white, 1)
	
	for(var i=0; i < 10; i++){
		draw_sprite_ext(mediaPlayerAssets.audioBar, 0, xx+50+(i*6), yy+77, 1, -audioBars[i], 0, c_white, 1)
		if audioBars[i] > 0 audioBars[i] -= 0.03
		byeah+=audioBars[i]
	}
	draw_set_color(c_white)
	
	if round(byeah) = 0 {
		for(var i=0; i < 10; i++){
			audioBars[i] = random_range(0, 1)	
		}
	}
}

tx += -keyboard_check_pressed(vk_left) + keyboard_check_pressed(vk_right)

ty += -keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down)

if keyboard_check_pressed(vk_enter) {show_debug_message(tx); show_debug_message(ty)}