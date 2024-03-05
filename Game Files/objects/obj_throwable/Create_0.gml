event_inherited();
target_x = undefined;
target_y = undefined;
object_hit = undefined;
spr_splash = undefined;
thrown = false;
collided = false;

function start_throw() {
	thrown = true;
	target_x = mouse_x;
	target_y = mouse_y;
	direction = point_direction(x, y, mouse_x, mouse_y);
	base_speed = 5;
	speed = base_speed;
}

