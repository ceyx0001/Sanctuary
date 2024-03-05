// hit points
max_hp = 1;
hp = global.player_level * max_hp;

base_dmg = 1;

base_speed = 1;
speed = base_speed;

invincible = false;
iframe = 10;

xp_multiplier = 1;

base_xscale = 1;

function set_enemy(max_hp_new, base_speed_new, dmg_new) {
	max_hp = max_hp_new;
	hp = global.player_level * max_hp;	
	base_speed =  base_speed_new;
	speed = base_speed;
	base_dmg = dmg_new;
}

function set_xp_multiplier(val) {
	xp_multiplier = val;
}

function set_scale(val) {
	base_xscale = val;
	image_xscale = val;
	image_yscale = val;
}

function flip_image() {
	base_xscale = base_xscale * -1;	
}