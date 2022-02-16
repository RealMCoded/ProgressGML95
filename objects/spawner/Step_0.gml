/// @description
rnd = irandom_range(1,100)
rnd2 = irandom_range(1,100)
x = random_range(0, room_width)

if rnd = 1 {
	if rnd2=1 {instance_create_layer(x, y, layer_get_id("Segments"), obj_seg_rnd)} else {instance_create_layer(x, y, layer_get_id("Segments"), obj_seg)}
}