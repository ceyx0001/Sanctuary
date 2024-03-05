function player_movement(){
	with(obj_player) {
		speed = 0;
	
		if (keyboard_check(ord("W")))
			{
				// Add -10 to vertical speed.
				vspeed += -10;
			}
	
			// If the S key is down...
			if (keyboard_check(ord("S")))
			{
				// Add 10 to vertical speed.
				vspeed += 10;
			}
	
			// If the A key is down...
			if (keyboard_check(ord("A")))
			{
				// Add -10 to horizontal speed.
				hspeed += -10;
			}
	
			// If the D key is down...
			if (keyboard_check(ord("D")))
			{
				// Add 10 to horizontal speed.
				hspeed += 10;
			}
		}

		// Set the direction from the direction
		// from 0, 0 to hspeed, vspeed.
		direction = point_direction(x, y, x + hspeed, y + vspeed);

		// Set speed to a fixed value in the current direction.
		// This essentially normalizes the curent hspeed and vspeed values.
		speed = min(speed, base_speed);

		// If hspeed does not equal 0...
		if (hspeed != 0)
		{
			// Flip sprite horizontally based on hspeed.
			image_xscale = 1 * sign(hspeed);
			image_yscale = 1;
		}

		// If sprite is not the hit sprite,
		// meaning the hero isn't currently being hit...
		if (sprite_index != spr_player_hit)
		{
			// If speed is over 0...
			if (speed > 0)
			{
				// Set sprite to the running sprite.
				sprite_index = spr_player_run;
				image_index += 0;
			}
	
			// Else speed is 0...
			else
			{
				// Set sprite to the idle sprite.
				sprite_index = spr_player_idle;
				image_index += 0;
			}
	
		// restrict player from moving out of view
		x = clamp(x, 0, room_width);
		y = clamp(y, 0, room_height);
	
		x = clamp(x, vx(), vx() + vw());
		y = clamp(y, vy(), vy() + vh());	
	}
}