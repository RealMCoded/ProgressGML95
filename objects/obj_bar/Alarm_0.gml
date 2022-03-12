/// @description u win
//TEMPORARY WIN CODE. REWORK THIS!
global.level++
ini_open("save.ini")
ini_write_real(global.system, "level", global.level)
ini_close()
instance_destroy()
	
_i = instance_create_layer(32, 32, layer, obj_GameEnd)
_i.seg = seg
	
with _i {
	for(var i=0; i < 20; i++) {
		if seg[i] = 0 bseg+=5
		if seg[i] = 1 oseg+=5
	}
}