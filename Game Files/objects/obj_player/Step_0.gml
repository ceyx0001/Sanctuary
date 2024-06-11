if (!global.paused) {
	player_movement();
	
	if (instance_exists(throwable)) {
		if (!throwable.thrown) {
			throwable.x = x;
			throwable.y = y - 15;
			if (mouse_check_button(mb_left)) {
				throwable.start_throw();
			}
		}
	}
	
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, pickup_radius, obj_loot, false, true, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
			if (object_get_parent(_list[| i].object_index) == obj_throwable 
				&& instance_exists(throwable)) {
				_list[| i].pickup = false;
				if (throwable.id != _list[| i].id) {
					_list[| i].speed = 0;	
				}
		   } else {
				_list[| i].pickup = true;
		   }
	    }
	}
	ds_list_destroy(_list);
	
	for (var i = 0; i < skills_count; i++) {
		skills[i].x = x;
		skills[i].y = y;
	}
	
	
	// USE SKILLS
	if (keyboard_check(ord("C"))) {
		skills[0].use_skill();	
	}
	
	if (level_ups > 0) {
		instance_create_layer(0, 0, "Instances", obj_upgrade_screen);	
		global.player_level++;		
		level_ups--;
	}
}

