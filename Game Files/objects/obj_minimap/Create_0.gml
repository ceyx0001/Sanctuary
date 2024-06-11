#macro MINIMAP_TILE_SIZE 16 // minimap size factor
#macro SCREEN_OFFSET 15 // minimap location offset from edge of screen
#macro MINIMAP_X_OFFSET 1695 // minimap x position offset (where it is horizontally)

minimap_bg = -1;
minimap_entities = -1;
minimap_h = room_height / MINIMAP_TILE_SIZE;
minimap_w = room_width / MINIMAP_TILE_SIZE;
x = SCREEN_OFFSET;
y = SCREEN_OFFSET;

// shrink room to fit within minimap
function refresh_bg() {
	minimap_bg = surface_create(minimap_w, minimap_h);
	var surface_room = surface_create(room_width, room_height); // create temp surface to draw room on
	surface_set_target(surface_room);
		draw_clear(c_black);
		draw_tilemap(layer_tilemap_get_id(layer_get_id("Base")), 0, 0);
		draw_tilemap(layer_tilemap_get_id(layer_get_id("Overlay")), 0, 0);
	surface_reset_target();
	surface_set_target(minimap_bg);
		draw_surface_stretched(surface_room, 0, 0, minimap_w, minimap_h); // shrink drawn room to minimap surface
	surface_reset_target();
	surface_free(surface_room);
}

refresh_bg();