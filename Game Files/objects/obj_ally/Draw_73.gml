// draw player hp
if (!global.paused) {
	var bar_width = sprite_get_width(spr_hp);
	var bar_height = sprite_get_height(spr_hp);
	var draw_width = bar_width * (hp / max_hp);
	draw_sprite_part(spr_hp, image_index, 0, 0, draw_width, bar_height, x - 9, y + 16);
	hp = clamp(hp, 0, max_hp);
	draw_self();	
}