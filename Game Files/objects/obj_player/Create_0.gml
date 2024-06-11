event_inherited();
spr_hit = spr_player_hit;
spr_run = spr_player_run;
spr_idle = spr_player_idle;

pickup_radius = 30;

throwable = undefined; // item to throw

xp = 0;
level_req = 3; 
level_ups = 0;
global.player_level = 1;

max_skills = 3;
skills_count = 1;
skills = array_create(max_skills);

skills[0] = instance_create_layer(0, 0, "GUI", obj_freeze_skill);
set_unlock(skills[0]);