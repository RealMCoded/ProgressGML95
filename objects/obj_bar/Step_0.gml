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
		default: {seg[percent] = _i.type; percent++; percent_disp+=5} break;
	}

	instance_destroy(_i.id)
}

//win checks
if percent > 19 {
	//u win	
}