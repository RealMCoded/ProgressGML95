/// @description

draw_sprite_part_ext(global.sprite[1], 0, 136, 336, 64, 58, 0, 680, 20, 1, c_white, 1)

if !clicked draw_sprite_part_ext(global.sprite[1], 0, 12, 216, 122, 44, x, y, 0.7, 0.7, c_white, 1) else draw_sprite_part_ext(global.sprite[1], 0, 12, 284, 122, 44, x, y, 0.7, 0.7, c_white, 1)

draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_text_transformed_color(x+34, y+15, "Begin", 0.9, 0.9, 0, c_black, c_black, c_black, c_black, 1)

//draw menu (hell)
if clicked {
	draw_sprite_part(global.sprite[1], 0, 512, 182, 320, 330, 0, y-340)	
	draw_text(room_width/2, room_height/2, "===PAUSED===")
}