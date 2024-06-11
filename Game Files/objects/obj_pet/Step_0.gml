if (!global.paused) {
	for (var i = 0; i < weapons_count; i++) {
		weapons[i].x = x;
		weapons[i].y = y;
	}

	if (hspeed > 0) {image_xscale = -1;}
	else {image_xscale = 1;}


	x = clamp(x, vx(), vx() + vw());
	y = clamp(y, vy(), vy() + vh());	
	
	if (abs(obj_player.x - x) >= 200 || abs(obj_player.y - y) >= 100 || following) {
	    // catch up
	    direction = point_direction(x, y, obj_player.x, obj_player.y);
		obj_pet.speed = obj_player.base_speed * 1.5;
		following = true;
	} 
	if (distance_to_object(obj_player) < 50 && following) {
		following = false;
	}
}