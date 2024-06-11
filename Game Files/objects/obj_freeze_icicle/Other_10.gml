/// @description 
var enemies = ds_list_create();
var count = collision_circle_list(x, y, 32 * area, obj_enemy, false, true, enemies, false);

if (count > 0) {
	for (var i = 0; i < count; i++) {
		var enemy = enemies[| i];
		var shard = instance_create_layer(enemy.x, enemy.y, "Instances", obj_freeze_ice);
		shard.set_parent(enemy);
		shard.depth = enemy.depth - 1000;
	}
}






