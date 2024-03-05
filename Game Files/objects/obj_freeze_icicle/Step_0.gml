if (!global.paused) {
	if (sprite_index == spr_freeze_icicle) { 
		gravity = 0.1
		if (target_y < y + 20) {
			base_area = 2;
			set(self);
			y += 20;
			gravity = 0;
			speed = 0;
			vspeed = 0;
			sprite_index = spr_freeze_splash;
			event_user(0);
		}
	}
} else {
	gravity = 0;
	vspeed = 0;
}	