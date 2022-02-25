/// @description

if !global.pause {
rnd = irandom_range(1,100)
rnd2 = irandom_range(1,100)
x = random_range(-32, room_width+32)

if rnd = 1 {
	if rnd2=1 {instance_create_layer(x, y, layer_get_id("Segments"), obj_seg_rnd)} else if rnd2=100 {ti = instance_create_layer(x, y, layer_get_id("Segments"), obj_seg) ti.type = 6} else {instance_create_layer(x, y, layer_get_id("Segments"), obj_seg)}
}
}