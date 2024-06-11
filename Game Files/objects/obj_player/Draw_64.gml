// draw xp bar
draw_sprite_ext(spr_xpbar_back, 0, 0, 4, 1920/32, 1, 0, c_white, 1);
// xp progress
var fill = min(xp / level_req, 1);
// draw xp progress
draw_sprite_ext(spr_xpbar_fill, 0, 0, 4, 1920/32 * fill, 1, 0, c_white, 1);

if (!global.paused) {
	draw_sprite(spr_player_inv, 0, 1800, 1028);
	var row = 1028;
	var col = 1732; 

	for (var i = 0; i < skills_count; i++) {
		// Draw GUI Event
		var r = skills[i].time / skills[i].cd; 
		draw_sprite_ext(skills[i].icon, 0, col, row, 1.5, 1.5, 0, c_white, 1);
		if (r != 1) {
			var w = sprite_get_width(skills[i].icon);
			var h = sprite_get_height(skills[i].icon);
			draw_sprite_part_ext(skills[i].icon, 0, 0, 0, w, h * r, col - 24, row - 24, 1.5, 1.5, c_black, 0.8);	
		}
	
		col += OFFSET;
	}	
}

draw_set_font(fnt_clock);
draw_set_color(c_white);
draw_text(60, 40, "lv. " + string(global.player_level));