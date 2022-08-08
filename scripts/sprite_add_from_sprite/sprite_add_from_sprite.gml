// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sprite_add_from_sprite(originalsprite, left, top, width, height){
	var surf, thespr;
	surf = surface_create(sprite_get_width(originalsprite), sprite_get_height(originalsprite));
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	draw_sprite(originalsprite, 0, 0, 0);
	thespr = sprite_create_from_surface(surf, left, top, width, height, false, false, 0, 0);
	surface_reset_target();
	surface_free(surf);
	
	return thespr;
}