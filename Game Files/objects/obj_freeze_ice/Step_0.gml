if(!global.paused) {
	if (freeze_time > 0) {
		freeze_time--;	
		if (instance_exists(parent)) {
			parent.speed = 0;	
			parent.image_speed = 0;
			x = parent.x;
			y = parent.y;
			parent.image_blend = c_teal;
		}
	} else {
		if (instance_exists(parent)) {
			parent.speed = parent.base_speed;	
			parent.image_speed = 1;
			parent.image_blend = c_white;
		}
		if (linger_time > 0) {
			depth = 0;
			linger_time--;
		} else {
			image_speed = 1;
			sprite_index = spr_freeze_ice_end;		
		}
	}
}









