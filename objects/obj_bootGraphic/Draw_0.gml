/// @description

draw_sprite_ext(global.sprite[0], 0, 0, 0, 0.7, 0.7, 0, c_white, t)

switch global.system{
	case "95": draw_sprite_ext(global.sprite[1], 0, room_width/2, room_height/2, 0.5, 0.5, 0, c_white, t*2) break;
	case "95plus": draw_sprite_ext(global.sprite[1], 0, room_width/2, room_height/2, 1, 1, 0, c_white, t*2) break;
	default: draw_sprite_ext(global.sprite[1], 0, room_width/2, room_height/2, 1, 1, 0, c_white, t*2) break;	
}

t+=0.01