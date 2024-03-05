//// @description wave spawner
if (!global.paused) {
	if (destroyed != 0) {
		var big_xp = instance_create_layer(obj_pet.x, obj_pet.y, "Instances", obj_xp);
		big_xp.sprite_index = spr_xp_big;
		big_xp.val = destroyed;
		destroyed = 0;
	}
	
	// get current visible region
	var view_x = vx();
	var view_y = vy();
	var view_w = vw();
	var view_h = vh();
	// deactivation region
	var left = view_x - 100;
	var top = view_y - 100;
	var right = view_x + view_w + 100;
	var bottom = view_y + view_h + 100;

	with(obj_enemy) {
		if (obj_enemy.object_index != obj_enemy_event) {
			if (id.x < left || id.x > right || id.y < top || id.y > bottom) {
				ds_list_add(obj_game.deactivated_enemies, id);
		        instance_deactivate_object(id);
			}	
		}
	}
	
	// Choose a random side of the view (0 = top, 1 = right, 2 = bottom, 3 = left)
	var edge = irandom(3);
	var spawn_count = exp(global.game_time/200);
	//show_debug_message(spawn_count);

	// spawn enemies around the player
	repeat(spawn_count) {
		var spawn_x = 0;
		var spawn_y = 0;
		switch (edge) {
		    case 0:  // Top
		        spawn_x = view_x + random(view_w);
		        spawn_y = view_y - 10;
		        break;
		    case 1:  // Right
		        spawn_x = view_x + view_w + 10;
		        spawn_y = view_y + random(view_h);
		        break;
		    case 2:  // Bottom
		        spawn_x = view_x + random(view_w);
		        spawn_y = view_y + view_h + 10;
		        break;
		    case 3:  // Left
		        spawn_x = view_x - 10;
		        spawn_y = view_y + random(view_h);
		        break;
		}
		
		var r = random(Enemy.totalWeight);
		var sum = 0;
		var key = ds_map_find_first(enemies);
		while (key != undefined) {
		    var value = ds_map_find_value(enemies, key);
		    sum += value;
			if (r <= sum) {
				instance_create_layer(spawn_x, spawn_y, "Instances", key);
	            break;
	        }
		    key = ds_map_find_next(enemies, key);
		}
	}
	
	var deactivated_count = ds_list_size(deactivated_enemies);
	for (var i = deactivated_count; i >= 0; i--) {
		var enemy = ds_list_find_value(deactivated_enemies, i);
		if (enemy != undefined) {
			instance_activate_object(enemy);	
		}
		
		if (instance_exists(enemy)) {
			var spawn_x = 0;
			var spawn_y = 0;
			switch (edge) {
				case 0:  // Top
				    spawn_x = view_x + random(view_w);
				    spawn_y = view_y - 10;
				    break;
				case 1:  // Right
				    spawn_x = view_x + view_w + 10;
				    spawn_y = view_y + random(view_h);
				    break;
				case 2:  // Bottom
				    spawn_x = view_x + random(view_w);
				    spawn_y = view_y + view_h + 10;
				    break;
				case 3:  // Left
				    spawn_x = view_x - 10;
				    spawn_y = view_y + random(view_h);
				    break;
			}
			enemy.x = spawn_x;
			enemy.y = spawn_y;
		}
		ds_list_delete(deactivated_enemies, i);
	}
}

alarm[1] = spawn_cd;

