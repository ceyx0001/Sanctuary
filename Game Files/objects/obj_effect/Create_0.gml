base_speed = 0;
base_area = 1;
area = 1;

function set(effect) {
	area = base_area;
	
	var pet = instance_find(obj_pet, 0);
	for (var i = 0; i < pet.passives_count; i++) {
		var key = pet.passives[i].key;
		var base = variable_instance_get(self, "base_" + key);
		if (base != undefined) {
			var val = base * (1 + pet.passives[i].multiplier * pet.passives[i].amount);
			variable_instance_set(self, key, val);	
		}
	}
	
	effect.image_xscale = area;
	effect.image_yscale = area;
	
	if (effect.image_xscale < 0) {
		effect.image_xscale *= -1;	
	}
}