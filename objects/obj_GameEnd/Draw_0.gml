/// @description

draw_sprite_part(global.sprite[1], 0, 210, 80, 184, 184, x, y)

for(var i=0; i < 20; i++) {
	//draw_sprite(spr_seg, seg[i], (x+30)+i*8, y+26)
	draw_sprite_ext(spr_seg, seg[i], (x+13)+i*8, y+96, 0.5, 0.5, 0, c_white, 1)
}
draw_text_color(x+30, y+64, "Game Completed!", c_black, c_black, c_black, c_black, 1)
draw_text_color(x+32, y+128, string(bseg) + "%", $7F0000, $7F0000, $7F0000, $7F0000, 1)
draw_text_color(x+96, y+128, string(oseg) + "%", $1E93F7, $1E93F7, $1E93F7, $1E93F7, 1)
draw_text_color(x+16, y+24, "u win :D", c_white, c_white, c_white, c_white, 1)
draw_text_color(x+16, y+160, "Click anywhere\nto continue.", c_black, c_black, c_black, c_black, 1)