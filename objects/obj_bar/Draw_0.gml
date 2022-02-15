/// @description
draw_self()

//Draw segments
for(var i=0; i < percent; i++) {
	draw_sprite(spr_seg, seg[i], (x+30)+i*16, y+26)
}

draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(x+sprite_get_width(sprite_index)/2, y+sprite_get_height(sprite_index)/2, string(percent_disp) + "%")