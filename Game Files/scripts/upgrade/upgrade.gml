// function to retrieve list of available weapon upgrades.
function upgrade_item(upgrades, item)
{
	if (item.amount < item.max_amount)
	{
		var upgrade_map = ds_map_create(); // holds upgrade option
		ds_map_replace(upgrade_map, "object", item);
		ds_map_replace(upgrade_map, "type", "passive");
		ds_map_replace(upgrade_map, "description", item.description);
		ds_map_replace(upgrade_map, "key", "amount");
		ds_map_replace(upgrade_map, "amount", 1);
		ds_map_replace(upgrade_map, "icon", item.icon);
		ds_map_replace(upgrade_map, "name", item.name);
		ds_list_add(upgrades, upgrade_map);
	}
}