/// @description attack
var move = "spr_boss_" + string(boss_id) + "_attack_" + string(irandom_range(1, num_moves));

if (sprite_index == default_sprite && in_range) {
	sprite_index = asset_get_index(move);
	image_index = 0;
}
alarm[1] = moves_cd + sprite_get_number(asset_get_index(move));	









