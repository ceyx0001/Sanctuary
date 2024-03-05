if (!collided) {
	sprite_index = spr_freeze_ice_break;
	image_speed = 1;
	depth = -1000;
	if (sprite_index == spr_freeze_ice_break) {
		image_xscale = area * 1.5;
		image_yscale = area * 1.5;	
	}
	var enemies = ds_list_create();
	var count = collision_circle_list(x, y, explosion_radius, obj_enemy, false, true, enemies, false);
	if (count > 0) {
		for (var i = 0; i < count; i++) {
			enemies[| i].hp -= other.dmg / 5;	
		}
	}
	if (instance_exists(parent)) {
		parent.speed = parent.base_speed;	
		parent.image_speed = 1;
		parent.image_blend = c_white;
	}
	ds_list_destroy(enemies);
	audio_play_sound(snd_freeze_ice, 1, false);
	audio_sound_gain(snd_freeze_ice, 1/instance_number(obj_freeze_ice), 0);	
}

collided = true;



