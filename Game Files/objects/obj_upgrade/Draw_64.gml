/// @description draw upgrade
if (upgrade_info == undefined) { exit; }

// draw glow upgrade
if (mouse_over)
{
	draw_sprite(spr_upgrade_hover, 0, x, y);
	if (is_clicked) {
		draw_sprite(spr_upgrade_click, 0, x, y);
	}
} else {
	draw_self();
}

draw_set_colour(c_black);
draw_set_alpha(1);

// name
draw_set_halign(fa_left);
draw_set_font(fnt_upgrade_bold);
draw_text(x - 125, y - 40, string(upgrade_info[? "name"]));

// description
draw_set_font(fnt_upgrade);
draw_text_ext(x - 125, y + 10, string(upgrade_info[? "description"]), 25, 400);
draw_sprite(upgrade_info[? "icon"], 0, x - 238, y);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
