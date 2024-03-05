/// @description effect
var projectile = instance_create_layer(x, y, "Instances", obj_cybil_projectile);
set(projectile);
var offset = 0;
var flip = -1;
var temp = area;

with(obj_cybil_projectile) {
	y = obj_pet.y + offset;
	offset += 10;
	image_xscale = obj_pet.image_xscale * temp * flip;
	flip *= -1;
	var rand = choose(-1, 1);
	image_yscale = rand * temp;
}
