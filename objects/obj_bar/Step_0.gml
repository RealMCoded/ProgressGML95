/// @description

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
	_i = place_meeting(x, y, obj_seg)
	seg[percent] = 1
	percent++
	instance_destroy(_i.id)
}

if percent > 19 {
	//u win	
}