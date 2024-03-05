// mouse over event
if (!instance_exists(obj_grimoire)) {
	if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom) {
		// left mouse event
		if (mouse_check_button_pressed(mb_left)) {
			is_clicked = true;
			audio_play_sound(snd_quit, 1, false);
			audio_sound_gain(snd_quit, 0.7, false);
		}
	
		if (is_clicked) {
			// lmb release event
			if (mouse_check_button_released(mb_left)) {
				room_goto(rm_menu);
			}
		}
	
		if (!played_sound) {
			image_alpha = 1;
			audio_play_sound(snd_pause_menu, 1, false);
			audio_sound_gain(snd_pause_menu, 1, false);	
			played_sound = true;
		}
	} else {
		image_alpha = 0;
		played_sound = false;
	}	
}