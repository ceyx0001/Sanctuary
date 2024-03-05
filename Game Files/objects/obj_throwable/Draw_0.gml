if (collided) {
	image_xscale = 1.5;
	image_yscale = 1.5;
	image_angle = 0;
	sprite_index = spr_splash;
	x = object_hit.x;
	y = object_hit.y;
}

draw_self();