function add_item_availability(object_asset) {
	if (object_get_parent(object_asset) == obj_weapon) {
		ds_list_add(global.available_weapons, object_asset);
	} else if (object_get_parent(object_asset) == obj_passive) {
		ds_list_add(global.available_passives, object_asset);	
	} else {
		ds_list_add(global.available_skills, object_asset);	
	}
}

function delete_item_availablility(object_asset) {
	if (object_get_parent(object_asset) == obj_weapon) {
		var index = ds_list_find_index(global.available_weapons, object_asset)
		ds_list_delete(global.available_weapons, index);
	} else if (object_get_parent(object_asset) == obj_passive) {
		var index = ds_list_find_index(global.available_passives, object_asset)
		ds_list_delete(global.available_passives, index);
	} else {
		var index = ds_list_find_index(global.available_skills, object_asset)
		ds_list_delete(global.available_skills, index);
	}
}