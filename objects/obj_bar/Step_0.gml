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

if place_meeting(x, y, obj_seg){
	_i = instance_place(x, y, obj_seg)
	
	switch _i.type {
		case 2: {percent--; percent_disp-=5} break; //Minus
		case 3: {seg[percent] = 0; seg[percent+1] = 0; percent+=2; percent_disp+=10} break; //x2
		case 4: {game_restart()} break; //Red
		case 5: {} break; //null
		case 6: {for(var i=0; i < 20; i++) {seg[i] = 0} percent = 20} break; //Green
		default: {seg[percent] = _i.type; percent++; percent_disp+=5} break; //Any other segment
	}

	instance_destroy(_i.id)
}

//Random segment checks
if place_meeting(x, y, obj_seg_rnd){
	_i = instance_place(x, y, obj_seg_rnd)
	instance_destroy(_i.id)
	
	_type = irandom_range(0,5)
	
	switch _type {
		case 2: {percent--; percent_disp-=5} break; //Minus
		case 3: {seg[percent] = 0; seg[percent+1] = 0; percent+=2; percent_disp+=10} break; //x2
		case 4: {game_restart()} break; //Red
		case 5: {} break; //null
		case 6: {for(var i=0; i < 20; i++) {seg[i] = 0} percent = 20} break; //Green
		default: {seg[percent] = _i.type; percent++; percent_disp+=5} break; //Any other segment
	}
}

//win checks
if percent > 19 {
	
	//TEMPORARY WIN CODE. REWORK THIS!
	global.level++
	ini_open("save.ini")
	ini_write_real(global.system, "level", global.level)
	ini_close()
	room_restart()
}