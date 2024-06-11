//// @description enemy tracking
if (!global.paused) {
	with(obj_enemy) {
		direction = point_direction(x, y, obj_pet.x, obj_pet.y);	
	
		// properly orient image
		if (obj_pet.x > x) {image_xscale = base_xscale;}
		else {image_xscale = -base_xscale;}
	
		// depth sort
		depth = -y;
	}		
}

alarm[0] = path_cd;