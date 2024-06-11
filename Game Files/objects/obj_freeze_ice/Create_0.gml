event_inherited();
parent = undefined;
set(self);
base_area = 0.7;
explosion_radius = sprite_get_width(sprite_index) * area;
freeze_time = ROOM_SPEED * 3;
linger_time = ROOM_SPEED * 2;
collided = false;

function set_parent(new_parent) {
	parent = new_parent;
}
