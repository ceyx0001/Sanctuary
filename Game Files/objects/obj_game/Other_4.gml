#macro VP_WIDTH 1920
#macro VP_HEIGHT 1080
#macro	BASE_TILE 13
#macro CELL_SIZE 128

enum PROPS {
	BG = 0,
	ROCK_1 = 123,
	ROCK_2 = 124,
	ROCK_3 = 125,
	ROCK_4 = 153,
	ROCK_5 = 154,
	ROCK_6 = 155,
	PEBBLE_1 = 6,
	PEBBLE_2 = 36,
	PEBBLE_3 = 7,
	PEBBLE_4 = 37,
	GRASS_1 = 132,
	GRASS_2 = 133,
	GRASS_3 = 162,
	GRASS_4 = 163,
	LOG_1 = 42,
	LOG_2 = 47,
	FLOWER_1 = 168,
	FLOWER_2 = 169,
	FLOWER_3 = 170,
	BUSH_1 = 231,
	BUSH_2 = 232,
	BUSH_3 = 233,
	BUSH_4 = 261,
	BUSH_5 = 262,
	BUSH_6 = 263,
}

//// @description generate map
randomize();

var getRoomWidth = round(room_width/16);
var getRoomheight = round(room_height/16);

var overlay_id = layer_tilemap_get_id(layer_get_id("Overlay"));
var base_id = layer_tilemap_get_id(layer_get_id("Base"));
var tiles = ds_list_create();

// add tile weights
add_tile(300, PROPS.BG, tiles);
add_tile(4, PROPS.GRASS_1, tiles);
add_tile(4, PROPS.GRASS_2, tiles);
add_tile(4, PROPS.GRASS_3, tiles);
add_tile(4, PROPS.GRASS_4, tiles);
add_tile(1, PROPS.PEBBLE_1, tiles);
add_tile(1, PROPS.PEBBLE_2, tiles);
add_tile(1, PROPS.PEBBLE_3, tiles);
add_tile(1, PROPS.PEBBLE_4, tiles);
add_tile(1, PROPS.LOG_1, tiles);
add_tile(1, PROPS.LOG_2, tiles);
add_tile(1, PROPS.FLOWER_1, tiles);
add_tile(1, PROPS.FLOWER_2, tiles);
add_tile(1, PROPS.FLOWER_3, tiles);
add_tile(1, PROPS.BUSH_1, tiles);
add_tile(1, PROPS.BUSH_2, tiles);
add_tile(1, PROPS.BUSH_3, tiles);
add_tile(1, PROPS.BUSH_4, tiles);
add_tile(1, PROPS.BUSH_5, tiles);
add_tile(1, PROPS.BUSH_6, tiles);

for(var width = 0; width < getRoomWidth; width++) {
	for(var height = 0; height < getRoomheight; height++) {
		// generate background
		tilemap_set(base_id, BASE_TILE, width, height);		
		
		// overlay with a random tile
		var index = irandom(ds_list_size(tiles) - 1);
		tilemap_set(overlay_id, ds_list_find_value(tiles, index), width, height);	
	}
}
instance_create_layer(x, y, "GUI", obj_minimap);