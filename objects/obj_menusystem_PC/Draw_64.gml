/// @description
draw_set_font(global.font[0])
draw_set_halign(fa_left)
daopt = text

daopt = string_replace_all(daopt, "[s" + string(selected)+"]", ">")
daopt = string_replace_all(daopt, "[s" + string(selected)+"_r]", "<")

for(var i=0; i < menuRange+1; i++) {
	daopt = string_replace_all(daopt, "[s" + string(i)+"]", "")
}

draw_text_color(x, y, daopt, c_white, c_white, c_white, c_white, 1)


draw_text(16, 16, "ProgressGML95 - Recreation created by stuartt_mcoded. Original game created by icoeye.")

draw_set_halign(fa_center)
draw_text(room_width/2, 640, "Game install location: " + global.installLocation + "\n\n[DEL] Reset location")