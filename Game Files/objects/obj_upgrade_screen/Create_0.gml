/// @description create level up selections
// make reroll button instance_create_layer(800, 450. "GUI", );
function add_unlocks(options, current, max_slots, list) {
	if (current < max_slots) {
		var count = ds_list_size(list);
		for (var i = 0; i < count; i++) {
			unlock_item(options, list[| i]);		
		}	
	}
}

function add_upgrades(options, max_upgrades, list) {
	for (var i = 0; i < max_upgrades; i++) {
		upgrade_item(options, list[i]);	
	}
}
pause();
audio_play_sound(snd_upgrade_screen, 1, false);
audio_sound_gain(snd_upgrade_screen, 0.5, false);
screen_y = 0; // start pos
target_y = 1080 / 2; // target pos
speed = 180; // animation speed
drawn_screen = false;
drawn_options = false;
