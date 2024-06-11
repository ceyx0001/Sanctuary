if (!global.paused)
{
	// escape key being pressed
	if (released && keyboard_check(vk_escape)) {
		open_start_menu();
		exit;
	} else {
		if (!keyboard_check(vk_escape)) {
			released = true;	
		}
	}
	
	// mouse over event
	if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom) {
		image_alpha = 1;
		
		// left mouse event
		if (mouse_check_button_pressed(mb_left)) {
			is_clicked = true;
		}
	
		// left mouse clicked event
		if (is_clicked) {
			if (mouse_check_button_released(mb_left)) {
				open_start_menu();
				exit;
			}
		}
	} else {
		is_clicked = false
		image_alpha = 0.5;	
	}
}