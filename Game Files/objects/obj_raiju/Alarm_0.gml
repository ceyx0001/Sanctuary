/// @description trigger
if (!global.paused && unlocked) {
	audio_play_sound(snd_index, 1, false);
	audio_sound_gain(snd_index, 0.7, 0);
	event_user(0);
}

alarm[0] = cd;


