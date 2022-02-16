/// @description
x = random_range(0, room_width)
y = random_range(0, room_height)

rnd = irandom_range(1, 150)

if rnd = 1 and !instance_exists(obj_popup) instance_create_layer(x, y, layer, obj_popup)