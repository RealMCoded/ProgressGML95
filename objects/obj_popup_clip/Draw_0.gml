/// @description
draw_self()
///draw_sprite_part_ext(global.sprite.gui, 0, 210, 80, 184, 184, x, y, 1, 0.5, c_white, 1)

if !instance_exists(obj_bar) instance_destroy()

move_towards_point(obj_bar.x, obj_bar.y, 2)