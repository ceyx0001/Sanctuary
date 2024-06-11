draw_self();
var start = x - 445;
var offset = 140;

if (ds_list_find_index(global.available_weapons, obj_cinder) != -1) {
	draw_sprite(spr_cinder, 0, start, y);	
} else {
	draw_set_font(fnt_upgrade_bold);
	draw_text(start, y, "???");
}
draw_set_font(fnt_upgrade_bold);
draw_text(start + 70, y, "+");
draw_sprite_ext(spr_freeze_icon, 0, start + offset, y, 2, 2, 0, c_white, 1);
draw_text(start + offset + 70, y, "=");
draw_sprite_ext(spr_freeze_ice_break, 1, start + offset *2, y, 2, 2, 0, c_white, 1);









