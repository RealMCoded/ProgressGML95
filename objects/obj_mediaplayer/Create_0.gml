/// @description
sprite_index = sprite_add(global.installLocation + "\\art\\skins\\" + global.system.id +"\\ico32_mediaplayer.png", 1, 0, 0, 0, 0)

mediaPlayerAssets = {
	baseWindow: sprite_add(global.installLocation + "\\art\\app\\progamp_panel1.png", 1, 0, 0, 50, 2),
	audioBar: sprite_add(global.installLocation + "\\art\\app\\progamp_signal.png", 1, 0, 0, 0, 0),
	buttonBase: sprite_add(global.installLocation + "\\art\\app\\progamp_button.png", 1, 0, 0, 0, 0),
	buttonPlay: sprite_add(global.installLocation + "\\art\\app\\progamp_play.png", 1, 0, 0, 0, 0),
	buttonStop: sprite_add(global.installLocation + "\\art\\app\\progamp_stop.png", 1, 0, 0, 0, 0)
}

tx = 0
ty = 0

xx = 736
yy = 352

audioBars = [1,0,0,1,0,1,1,0,0,1]

open = true
playing = false
playing_track = pointer_null
