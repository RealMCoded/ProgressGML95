/// @description

if DEBUG {
	draw_set_halign(fa_left)
	draw_set_valign(fa_left)
	draw_text(32, 32, seg)
	draw_text(32, 64, percent)
}

draw_set_halign(fa_center)
draw_text(room_width/2, 32, "Best: [placeholder]\nLevel " + string(global.level))