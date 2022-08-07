/// @description audio_play_sound_ext(filename, priority, loop);
/// @param filename
/// @param priority
/// @param loop
function audio_play_sound_ext(argument0, argument1, argument2) {

	mus = audio_create_stream(argument0) //create audio stream

	audio_play_sound(mus, argument1, argument2) //play the created stream


}
