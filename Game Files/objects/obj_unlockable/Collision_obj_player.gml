//// @description make item available
if (!unlocked) {
	audio_play_sound(snd_loot, 1, false);
	audio_sound_gain(snd_loot, 0.7, 0);
	add_item_availability(self.object_index);
	instance_destroy();
}	
	