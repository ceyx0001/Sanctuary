/// @description player tracking
if (!global.paused) {
	// depth sort
	depth = -y;

	var nearest_enemy = instance_nearest(x, y, obj_enemy);
	if (nearest_enemy != noone) {
		var dist_x = x - nearest_enemy.x;
		var dist_y = y - nearest_enemy.y;
		var avoid_dist = 50;
		var dist_to_enemy = point_direction(0, 0, dist_x, dist_y);
		var new_x = x + lengthdir_x(avoid_dist, dist_to_enemy);
		var new_y = y + lengthdir_y(avoid_dist, dist_to_enemy);
		move_towards_point(new_x, new_y, base_speed);
	} else  {
		// wander
		var new_x = x + random_range(-200, 200);
		var new_y = y + random_range(-200, 200);
		move_towards_point(new_x, new_y, base_speed);
	}

}

alarm[0] = track_cd;








