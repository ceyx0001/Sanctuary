depth = -100000;
if (!global.paused) {
	image_speed = 1;
	if (sprite_index == default_sprite) {
		dmg = base_dmg;
		if (speed == 0) {
			speed = base_speed * 0.5;	
		}
	} else {
		speed = 0;	
		dmg = base_dmg * dmg_multiplier;
	}
	in_range = distance_to_object(obj_pet) < 50;
}