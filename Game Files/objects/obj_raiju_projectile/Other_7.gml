/// @description create secondary
instance_destroy();
var center_x = sprite_get_width(spr_raiju_projectile);
var center_y = sprite_get_height(spr_raiju_projectile);
repeat(secondary_count) {
	var proj_x = random_range(x - center_x, x + center_x);
    var proj_y = random_range(y - center_y, y + center_y);
    var projectile = instance_create_layer(proj_x, proj_y, "Instances", obj_raiju_projectile_2);
	obj_raiju.set(projectile);
	var dir = choose(-1, 1);
	var original_area = projectile.image_xscale;
	projectile.image_xscale = dir * original_area;
}


