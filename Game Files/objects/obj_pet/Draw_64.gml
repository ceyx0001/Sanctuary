#macro OFFSET 57
if (!global.paused) {
	draw_sprite_ext(spr_pet_inv, 0, 186, 1008, 0.7, 0.7, 0, c_white, 1); 

	var row1 = 980;
	var row2 = row1 + OFFSET
	var col = 44;

	draw_set_font(fnt_upgrade_icon);
	draw_set_color(c_black);

	for (var i = 0; i < weapons_count; i++) {
		draw_sprite_ext(weapons[i].icon, 0, col, row1, 0.7, 0.7, 0, c_white, 1);
		draw_text(col - 2, row1 + 26, weapons[i].amount)
		col += OFFSET;
	}

	col = 44;

	for (var i = 0; i < passives_count; i++) {
		draw_sprite_ext(passives[i].icon, 0, col, row2, 0.7, 0.7, 0, c_white, 1);
		draw_text(col - 2, row2 + 26, passives[i].amount)
		col += OFFSET;
	}	
	draw_self();
}
