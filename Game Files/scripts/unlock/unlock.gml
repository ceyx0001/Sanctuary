// function to retrieve list of available weapon upgrades.
function unlock_item(options, object_asset)
{
	var item = undefined;
	if (instance_exists(object_asset)) {
		item = instance_find(object_asset, 0);
	} else {
		item = instance_create_layer(0, 0, "GUI", object_asset);	
	}
	var option_map = ds_map_create(); // holds  option
	ds_map_replace(option_map, "object", item);
	
	if (object_get_parent(object_asset) == obj_weapon) {
		ds_map_replace(option_map, "type", "weapon");
	} else {
		ds_map_replace(option_map, "type", "passive");
	}
	
	ds_map_replace(option_map, "description", item.description);
	ds_map_replace(option_map, "key", "unlocked");
	ds_map_replace(option_map, "amount", 1);
	ds_map_replace(option_map, "icon", item.icon);
	ds_map_replace(option_map, "name", item.name);
	ds_list_add(options, option_map);
	exit;
}

function set_unlock(item) {
	item.unlocked = true;
	item.visible = false;
	delete_item_availablility(item.object_index);
	if (object_get_parent(item.object_index) == obj_weapon) {
		item.description = "Increased base damage.";
	} 
}