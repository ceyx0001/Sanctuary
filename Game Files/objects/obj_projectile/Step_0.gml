/// @description projectile collision check
if (!global.paused) {
	enemies = ds_list_create();
	count = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy, false, true, enemies, false);
	if (count > 0)
	{
	    for (var i = 0; i < count; ++i;)
	    {
			var enemy = enemies[| i];
			if(enemy.invincible == false) {
				enemy.hp -= dmg;
				enemy.invincible = true		
				enemy.alarm[0] = enemy.iframe;
				var dir = point_direction(x, y, enemy.x, enemy.y);
				if (enemy.speed > 0) {
					enemy.x = enemy.x + lengthdir_x(5, dir);
					enemy.y = enemy.y + lengthdir_x(5, dir);
				}
				audio_play_sound(snd_hit, 1, false);
				audio_sound_gain(snd_hit, 0.1/count, 0)
			}
		}
	}
}