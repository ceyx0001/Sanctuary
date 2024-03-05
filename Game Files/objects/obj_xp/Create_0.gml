event_inherited();
val = 1;
if ((global.game_time / ROOM_SPEED) / 60 > 1 ) {
	val = (global.game_time / ROOM_SPEED) / 60;	
}

function multiply_xp(multiplier) {
	val *= multiplier;	
	if (val > 20) {
		sprite_index = spr_xp_big;	
	}
}

