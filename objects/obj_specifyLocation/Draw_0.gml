/// @description
var drawstring;

x = room_width/2
y = room_height/2
draw_set_halign(fa_center)
draw_set_valign(fa_center)

switch part {
	case 0: {drawstring = "A PC copy of Progressbar95 is required to play.\nPlease specify the game's install location.\n\n[s0]OK[s0E]\n[s1]Exit Game[s1E]"} break;
	case 1: {drawstring = global.installLocation+"\n\nIs this correct?\n\n[s0]Yes[s0E]\n[s1]No[s1E]" } break;
}

drawstring = string_replace_all(drawstring, "[s" + string(selected)+"]", "> ")
drawstring = string_replace_all(drawstring, "[s" + string(selected)+"E]", " <")

for(var i=0; i < 2; i++) {
	drawstring = string_replace_all(drawstring, "[s" + string(i)+"]", "")
	drawstring = string_replace_all(drawstring, "[s" + string(i)+"E]", "")
}

draw_text(x, y, drawstring)

//player input

if keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down) = 1 {
	selected = !selected	
}