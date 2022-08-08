/// @description
draw_self()
//draw_sprite_part(global.sprite[1], 0, 210, 80, 184, 184, x, y)

for(var i=0; i < 20; i++) {
	draw_sprite(spr_seg, seg[i], (x+25)+i*16, y+128)
}

draw_text_color(x+16, y+24, "Complete", c_white, c_white, c_white, c_white, 1)
draw_text_color(x+32, y+196, string(bseg) + "% Correct", $7F0000, $7F0000, $7F0000, $7F0000, 1)
draw_text_color(x+196, y+196, string(oseg) + "% Wrong", $1E93F7, $1E93F7, $1E93F7, $1E93F7, 1)
draw_text_color(x+16, y+256, "Click anywhere to continue.", c_black, c_black, c_black, c_black, 1)


