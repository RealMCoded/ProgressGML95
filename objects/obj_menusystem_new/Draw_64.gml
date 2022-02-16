/// @description
draw_set_halign(fa_left)
//draw_set_font(fnt_def)

menuRange=1
daopt = "===SELECT SYSTEM===\n\n\nProgressbar 95 [s0]\n\nProgressbar 95 Plus [s1]"

daopt = string_replace_all(daopt, "[s" + string(selected)+"]", ">")
daopt = string_replace_all(daopt, "[s" + string(selected)+"_r]", "<")

for(var i=0; i < menuRange+1; i++) {
	daopt = string_replace_all(daopt, "[s" + string(i)+"]", "")
}

draw_set_color(c_white)
draw_text(x, y, daopt)
