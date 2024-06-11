if (screen_y < target_y) {
    screen_y += speed;
	// card vackground
	draw_sprite(spr_upgrade_screen, 0, 1920/ 2, y);
	draw_set_font(fnt_card);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	// heading
	draw_text(1920 / 2, y, "Level Up");
} else {
	draw_sprite(spr_upgrade_screen, 0, 1920/2, 1080 / 2);
	draw_set_font(fnt_card);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(1920/2, 230, "Level Up");
	drawn_screen = true;
}

