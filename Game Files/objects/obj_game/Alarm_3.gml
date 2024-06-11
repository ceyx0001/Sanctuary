/// @description boss spawner
var dir = choose(vx(), vx() + vw());
instance_create_layer(dir, vh() / 2, "Instances", obj_boss_1);
show_debug_message("spawned boss");
alarm[3] = boss_cd;







