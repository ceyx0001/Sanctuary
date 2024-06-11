draw_self();

if (invincible == true) {
	shader_set(sh_hit);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, make_colour_hsv(255, 5, 240), 0.6);
	shader_reset();	
}

if (!global.paused) {
	if (hp <= 0) {
		instance_destroy();	
	}
}





