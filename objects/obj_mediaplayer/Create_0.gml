/// @description
sprite_index = sprite_add(global.installLocation + "\\art\\skins\\" + global.system.id +"\\ico32_mediaplayer.png", 1, 0, 0, 0, 0)

mediaPlayerAssets = {
	baseWindow: sprite_add(global.installLocation + "\\art\\app\\progamp_panel1.png", 1, 0, 0, 50, 2)
}

tx = 0
ty = 0

xx = 736
yy = 352

open = true
playing = false
playing_track = pointer_null
