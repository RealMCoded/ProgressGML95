/// @description
//draw_self()
for (var i = positions-1; i > 0; i--;) {
	draw_sprite_part(sprite_index, 0, 65, 21, 380, 86, pos_x[i], pos_y[i])
}
draw_sprite_part(sprite_index, 0, 65, 21, 380, 86, x, y)

//Draw segments
for(var i=0; i < percent; i++) {
	draw_sprite(spr_seg, seg[i], (x+30)+i*16, y+26)
}

draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(x+190, y+43, string(percent_disp) + "%")

if DEBUG {
	draw_set_color(c_red)
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1)
}