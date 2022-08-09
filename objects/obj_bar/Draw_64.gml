/// @description

if DEBUG {
	draw_set_halign(fa_left)
	draw_set_valign(fa_left)
	draw_text(32, 32, seg)
	draw_text(32, 64, percent)
}

draw_set_halign(fa_center)
draw_text(room_width/2, 32, "Level " + string(global.level))

draw_sprite_part(global.sprite.gui, 0, 6, 416, 98, 52, 1152, 32)
draw_text_color(1220, 60, "1", c_red, c_red, c_red, c_red, 1)