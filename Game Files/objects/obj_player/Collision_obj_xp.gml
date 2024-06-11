/// @description collect xp
if (!global.paused && other.pickup == true) { 
	xp += other.val
	while (xp >= level_req) {
		xp -= level_req;
		level_req = (level_req + 1) * 1.05;
		level_ups += 1;
	}
	instance_destroy(other.id);
	audio_play_sound(snd_xp, 1, false);
	audio_sound_gain(snd_xp, 0.05, 0)
}

