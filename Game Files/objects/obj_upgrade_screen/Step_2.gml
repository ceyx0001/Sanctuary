//// @description draw options after menu
if (drawn_screen && !drawn_options) {
	var options = ds_list_create(); // list of possible upgrade options

	// get unlocks for available items and place them in the list
	add_unlocks(options, obj_pet.weapons_count, obj_pet.max_weapons, global.available_weapons);
	add_unlocks(options, obj_pet.passives_count, obj_pet.max_passives, global.available_passives);

	// get upgrades for the equiped passives and place them in the list
	add_upgrades(options, obj_pet.weapons_count, obj_pet.weapons);
	add_upgrades(options, obj_pet.passives_count, obj_pet.passives);

	// randomize options
	ds_list_shuffle(options);

	// number of upgrades
	var count = ds_list_size(options);

	// option pos
	var current_card_x = -150;

	for (var i = 0; i < min(count, 3); i++) {
		var upgrade_info = ds_list_find_value(options, i);
		var card = instance_create_layer(1920 / 2, 1080 / 2 + current_card_x, "GUI", obj_upgrade);
		card.upgrade_info = upgrade_info;
		current_card_x += 180;
	}	
	drawn_options = true;
}








