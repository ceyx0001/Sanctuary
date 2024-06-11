event_inherited();
set_hp(200);
base_speed = 1;
spr_hit = spr_pet_hit;
spr_run = spr_pet;
spr_idle = spr_pet;
following = false;

track_cd = ROOM_SPEED * 1;
alarm[0] = 1;

max_weapons = 6;
max_passives = 6;
weapons_count = 1;
passives_count = 0;
weapons = array_create(max_weapons);
passives = array_create(max_passives);

weapons[0] = instance_create_layer(0, 0, "GUI", obj_cybil);
set_unlock(weapons[0]);