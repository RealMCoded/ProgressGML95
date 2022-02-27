/// @description

if !global.pause {

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

	//Normal segment checks
	if place_meeting(x, y, obj_seg){
		_i = instance_place(x, y, obj_seg)
	
		switch _i.type {
			case 2: {if percent !=0 {percent--; percent_disp-=5}} break; //Minus
			case 3: {seg[percent] = 0; seg[percent+1] = 0; percent+=2; percent_disp+=10} break; //x2
			case 4: {game_restart()} break; //Red
			case 5: {} break; //null
			case 6: {for(var i=0; i < 20; i++) {seg[i] = 0} percent = 20; percent_disp=100} break; //Green
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
			default: {seg[percent] = _type; percent++; percent_disp+=5} break; //Any other segment
		}
	}

	//win checks
	if percent > 19 {
		instance_destroy(spawner)
		instance_destroy(obj_seg)
		drag = false
		x = lerp(x, 480, 0.1)
		y = lerp(y, 128, 0.1)
		if alarm[0] = -1 alarm[0] = room_speed * 1.5
	}
}
