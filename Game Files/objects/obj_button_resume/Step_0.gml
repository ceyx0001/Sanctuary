// esc key event
if (released && keyboard_check(vk_escape)) {
	close_screen();
	exit;
} else {
	if (!keyboard_check(vk_escape)) {
		released = true;	
	}
}

// mouse over event
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom) {
	image_xscale = 1.1;
	image_yscale = 1.1;
	// left mouse event
	if (mouse_check_button_pressed(mb_left)) {
		is_clicked = true;
	}
	
	if (is_clicked) {
		// lmb release event
		if (mouse_check_button_released(mb_left)) {
			close_screen();
			exit;
		}
	}
} else {
	image_xscale = 1;
	image_yscale = 1;
}