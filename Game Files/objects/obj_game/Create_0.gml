global.available_weapons = ds_list_create();
global.available_passives = ds_list_create();
global.available_skills = ds_list_create();

// add available items
add_item_availability(obj_cybil);

add_item_availability(obj_count);
add_item_availability(obj_dmg);
add_item_availability(obj_area);
add_item_availability(obj_cd);

add_item_availability(obj_freeze_skill);
instance_create_layer(1660, 60, "GUI", obj_button_pause);

// create player and pet
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_player);
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_pet);

window_set_fullscreen(true);

enum Enemy {
	totalWeight = 100,
	count = 5
}

function add_enemies() {
	ds_map_add(enemies, obj_enemy_1, 40);
	ds_map_add(enemies, obj_enemy_2, 7);
	ds_map_add(enemies, obj_enemy_3, 3);
	ds_map_add(enemies, obj_enemy_4, 20);
	ds_map_add(enemies, obj_enemy_5, 30);
}

function add_tile(frequency, tile, list) {
	for (var i = 0; i < frequency; i++) {
		ds_list_add(list, tile)	
	}
}

path_cd = 20;
alarm[0] = path_cd;

global.game_time = 0;
spawn_cd = ROOM_SPEED * 1;
deactivated_enemies = ds_list_create();
enemies = ds_map_create();
add_enemies();
alarm[1] = spawn_cd;

aggregate_xp_cd = ROOM_SPEED * 20;
alarm[2] = aggregate_xp_cd;
destroyed = 0;

boss_cd = ROOM_SPEED * 180;
show_debug_message(boss_cd / ROOM_SPEED / 60);
alarm[3] = boss_cd;

instance_create_layer(x, y, "GUI", obj_camera);
instance_create_layer(x, y, "GUI", obj_clock);
