/// @description
draw_self()
draw_text(x-16, y+64, "Media Player")

if open {
	draw_sprite_ext(mediaPlayerAssets.baseWindow, 0, xx, yy, 1.5, 1.5, 0, c_white, 1)
	draw_set_color(#00ef00)
	draw_text_transformed(xx+57, yy+51, "00:00", 1.5, 1.5, 0)
	draw_text_transformed(xx+131, yy+66, "128", 1, 1, 0)
	draw_set_color(c_white)
}

tx += -keyboard_check_pressed(vk_left) + keyboard_check_pressed(vk_right)

ty += -keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down)

if keyboard_check_pressed(vk_enter) {show_debug_message(tx); show_debug_message(ty)}