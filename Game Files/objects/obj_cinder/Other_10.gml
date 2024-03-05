/// @description effect
var projectile = instance_create_layer(x, y, "Instances", obj_cinder_projectile);
set(projectile);
projectile.direction = irandom_range(-20, 20);
var nearest_enemy = instance_nearest(x, y, obj_enemy);
if (instance_exists(nearest_enemy))
{
	projectile.direction += point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
}
projectile.image_angle = 180 + projectile.direction;
projectile.base_speed = 1.5;
projectile.speed = projectile.base_speed;
