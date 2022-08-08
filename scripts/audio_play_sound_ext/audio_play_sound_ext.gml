function audio_play_sound_ext(filename, priority, loop) {

	var mus = audio_create_stream(filename) //create audio stream

	audio_play_sound(mus, priority, loop) //play the created stream
}
