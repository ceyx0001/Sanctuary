/// @description effect
var projectile = instance_create_layer(x, y, "Instances", obj_raiju_projectile);
set(projectile);
projectile.set_secondary_count(count);
var nearest_enemy = instance_nearest(x, y, obj_enemy);
if (instance_exists(nearest_enemy)) {
	projectile.x = nearest_enemy.x;
	projectile.y = nearest_enemy.y;
}