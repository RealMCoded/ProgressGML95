layer_background_sprite(layer_background_get_id("Background"), global.wallpaper.wallpaper[0])
layer_background_stretch(layer_background_get_id("Background"), true)

audio_play_sound_from_file("sounds\\intro_P" + global.system.id + ".ogg", 10, 0) //get this to work with all intros