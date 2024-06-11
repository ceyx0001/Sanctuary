#macro ROOM_SPEED game_get_speed(gamespeed_fps)
event_inherited();
base_dmg = 1;
base_count = 1;
base_area = 1;
base_cd = 1;

dmg = base_dmg;
count = base_count;
area = base_area;
cd = base_cd;

amount = 1;
max_amount = 1000000;

icon = undefined;
description = undefined;
name = undefined;
snd_index = undefined;

function set(projectile) {
	dmg = base_dmg * amount;
	area = base_area;
	cd = base_cd;
	count = base_count;
	
	var pet = instance_find(obj_pet, 0);
	for (var i = 0; i < pet.passives_count; i++) {
		var key = pet.passives[i].key;
		var base = variable_instance_get(self, "base_" + key);
		var val = base * (1 + pet.passives[i].multiplier * pet.passives[i].amount);
		variable_instance_set(self, key, val);
	}
	
	projectile.dmg = dmg;
	projectile.image_xscale = area;
	projectile.image_yscale = area;
	
	if ( projectile.image_xscale < 0) {
		projectile.image_xscale *= -1;	
	}
}