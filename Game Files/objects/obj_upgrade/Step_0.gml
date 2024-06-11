/// @description check mouse events
// Reset mouse_over to false, this will hide
// the glow effect on the card when drawing.
mouse_over = false;

// check mouse over
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	mouse_over = true
}

// hover event
if (mouse_over) {
	if (!played_sound) {
		if (!audio_is_playing(snd_upgrade_screen)) {
			audio_play_sound(snd_upgrade_hover, 1, false);
			audio_sound_gain(snd_upgrade_hover, 0.1, false);	
		}
		played_sound = true;	
	}
		
	// left mouse event
	if (mouse_check_button_pressed(mb_left)) {
		is_clicked = true;
	}
	
	if (is_clicked)	{
		// left mouse release event
		if (mouse_check_button_released(mb_left)) {
			// set variables for upgrade stats.
			var item = ds_map_find_value(upgrade_info, "object");
			var key = ds_map_find_value(upgrade_info, "key");
			var amount = ds_map_find_value(upgrade_info, "amount");
			var type = ds_map_find_value(upgrade_info, "type");
	
			// upgrade base stats
			var original_amount = variable_instance_get(item.id, key);
			variable_instance_set(item.id, key, original_amount + amount);
			
			if (key == "unlocked") {
				if (type == "weapon") {
					obj_pet.weapons[obj_pet.weapons_count] = item;
					obj_pet.weapons_count++;	
				} else {
					obj_pet.passives[obj_pet.passives_count] = item;
					obj_pet.passives_count++;	
				}
				set_unlock(item);
			}
	
			// destroy upgrades
			with(obj_upgrade) { instance_destroy() };
	
			// destroys upgrade screen
			with(obj_upgrade_screen) { instance_destroy() };
			
			audio_play_sound(snd_upgrade_confirm, 1, false);
			audio_sound_gain(snd_upgrade_confirm, 0.5, false);
		}
	}
} else {
	played_sound = false;	
}






