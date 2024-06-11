max_hp = 1000;
hp = max_hp;

base_speed = 2;

spr_hit = undefined;
spr_run = undefined;
spr_idle = undefined;

function set_hp(val) {
	max_hp = val;
	hp = max_hp;
}