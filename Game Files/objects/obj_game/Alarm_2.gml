/// @description xp aggregator
if (!global.paused) {
	var count = instance_number(obj_xp);
	// get current visible region
	var left = vx();
	var top = vy();
	var right = left + vw();
	var bottom = top + vh();
	if (count > 100) {
		with(obj_xp) {
			if (id.x < left || id.x > right || id.y < top || id.y > bottom) {
				obj_game.destroyed += id.val;
			    instance_destroy(id);
			}
		}
	}	
}

alarm[2] = aggregate_xp_cd;







