/// @description trigger
if (!global.paused && unlocked) {
	audio_play_sound(snd_index, 1, false);
	audio_sound_gain(snd_index, 0.7, 0);
	for (var i = 0; i < count; i++) {
		event_user(0);
	}
}

alarm[0] = cd;


