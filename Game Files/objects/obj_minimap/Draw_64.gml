if (!global.paused) {
	// minimap background
	if (!surface_exists(minimap_bg)) {
		refresh_bg();
	}
	draw_surface(minimap_bg, x + MINIMAP_X_OFFSET, y);

	// unlockables location
	if (!surface_exists(minimap_entities)) { 
		minimap_entities = surface_create(minimap_w, minimap_h);
	}
	surface_set_target(minimap_entities);
	draw_clear_alpha(c_black,0.0);
	with (obj_unlockable) {
		var l_edge = vx();
		var r_edge = l_edge + vw();
		var t_edge = vy();
		var b_edge = t_edge + vh();
		if (bbox_right < l_edge || bbox_left > r_edge || bbox_bottom < t_edge || bbox_top > b_edge) {
			// direction to offscreen unlockable
			var dir = point_direction(obj_player.x, obj_player.y, x, y);
    
			// calculate position on minimap edge
			var edge_x = x + lengthdir_x(room_width / 2, dir);
			var edge_y = y + lengthdir_y(room_height / 2, dir);
	
			if (dir >= 45 && dir < 135) { // top
				edge_y = 15 * MINIMAP_TILE_SIZE;
			} else if (dir >= 135 && dir < 225) { // left
				edge_x = 15 * MINIMAP_TILE_SIZE;
			} else if (dir >= 225 && dir < 315) { // bottom
				edge_y = room_height - 15 * MINIMAP_TILE_SIZE;
			} else { // right
				edge_x = room_width - 15 * MINIMAP_TILE_SIZE;
			}
	
			// draw arrow
			draw_sprite_ext(spr_minimap_arrow, 0, edge_x/MINIMAP_TILE_SIZE, edge_y/MINIMAP_TILE_SIZE, 1, 1, dir, c_white, 1);
		} 
		if (!unlocked) {
			draw_sprite_ext(sprite_index, 0, x/MINIMAP_TILE_SIZE, y/MINIMAP_TILE_SIZE, 0.2, 0.2, 0, c_white, 1);	
		}
	}
	surface_reset_target();
	draw_surface(minimap_entities, x + MINIMAP_X_OFFSET, y);

	var minimap_vx = vx() / MINIMAP_TILE_SIZE + MINIMAP_X_OFFSET;
	var minimap_vy = vy() / MINIMAP_TILE_SIZE;
	// mini view
	draw_sprite_stretched(spr_minimap_view_border, 0, x + minimap_vx, y + minimap_vy, vw()/MINIMAP_TILE_SIZE, vh()/MINIMAP_TILE_SIZE);
	// minimap border box
	draw_sprite_stretched(spr_minimap_box, 0, x + MINIMAP_X_OFFSET, y, minimap_w, minimap_h);	
}