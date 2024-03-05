event_inherited();

base_cd = 1;
cd = undefined;
time = 0;

function use_skill() {
	cd = base_cd;
	if (time == 0) {
		for (var i = 0; i < obj_pet.passives_count; i++) {
			if (obj_pet.passives[i].key == "cd") {
				cd = base_cd * (1 + obj_pet.passives[i].multiplier * obj_pet.passives[i].amount);
				break;
			}
		}
		event_user(0);
		time = cd;
	}
}







