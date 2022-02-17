/// @description
draw_set_halign(fa_left)
//draw_set_font(fnt_def)
daopt = text

daopt = string_replace_all(daopt, "[s" + string(selected)+"]", ">")
daopt = string_replace_all(daopt, "[s" + string(selected)+"_r]", "<")

for(var i=0; i < menuRange+1; i++) {
	daopt = string_replace_all(daopt, "[s" + string(i)+"]", "")
}

draw_text_color(x, y, daopt, c_white, c_white, c_white, c_white, 1)
