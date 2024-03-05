/// @description move timers
event_inherited();
dmg_multiplier = 5;
base_dmg = 5;
dmg = base_dmg;
attacking = false;
num_moves = 1;
moves_cd = ROOM_SPEED * 1;
boss_id = 1;
in_range = false;
default_sprite =  asset_get_index("spr_boss_" + string(boss_id));
sprite_index = default_sprite;
set_xp_multiplier(10);
alarm[1] = moves_cd;

function set_boss(moves, cd, i) {
	num_moves = moves;
	moves_cd = ROOM_SPEED * cd;
	boss_id = i;
	default_sprite = "spr_boss_" + string(boss_id);
	sprite_index = asset_get_index(default_sprite);
}
	