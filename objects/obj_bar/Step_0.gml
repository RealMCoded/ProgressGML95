/// @description

//move the bar
if (!drag) {
   if (mouse_check_button(mb_left)) {
      drag = true;
      mx = x - mouse_x;
      my = y - mouse_y;
   }
}
else {
   x = mouse_x + mx;
   y = mouse_y + my;
   if (!mouse_check_button(mb_left)) {
      drag = false;
   }
}

//segment checks
if place_meeting(x, y, obj_seg){
	_i = instance_place(x, y, obj_seg)
	
	switch _i.type {
		case 2: {percent--; percent_disp-=5} break;
		case 3: {seg[percent] = 0; seg[percent+1] = 0; percent+=2; percent_disp+=10} break;
		case 4: {game_restart()} break;
		case 5: {} break;
		default: {seg[percent] = _i.type; percent++; percent_disp+=5} break;
	}

	instance_destroy(_i.id)
}

if place_meeting(x, y, obj_seg_rnd){
	_i = instance_place(x, y, obj_seg_rnd)
	instance_destroy(_i.id)
	
	_i = instance_create_layer(x, y, layer, obj_seg)
}

//win checks
if percent > 19 {
	global.level++
	ini_open("save.ini")
	ini_write_real("scores", "level", global.level)
	ini_close()
	room_restart()
}