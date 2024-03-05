event_inherited();

if (thrown) {
	if (x - 4 < target_x && x + 4 > target_x && 
		y - 4 < target_y && y + 4 > target_y) {
		object_hit = collision_rectangle(x - 32, y - 32, x + 32, y + 32, obj_ally, false, true);
		if (instance_exists(object_hit)) {
			audio_play_sound(snd_heal, 1, false);
			audio_sound_gain(snd_heal, 0.3, 0);
			collided = true;	
		} else {
			audio_play_sound(snd_throwable_miss, 1, false);
			audio_sound_gain(snd_throwable_miss, 0.3, 0);
			instance_destroy();
		}
	} else {
		image_angle += 10;
	}	
}