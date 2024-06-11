if (!global.paused && !instance_exists(throwable)) {
	throwable = other;
	audio_play_sound(snd_throwable, 1, false);
	audio_sound_gain(snd_throwable, 0.5, 0);
}






