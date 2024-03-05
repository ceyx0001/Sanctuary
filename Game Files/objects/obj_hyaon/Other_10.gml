/// @description effect
var projectile = instance_create_layer(x, y, "Instances", obj_hyaon_projectile);
set(projectile);
projectile.base_speed = 3;
projectile.speed = sword.base_speed;
projectile.gravity = 0.1;
projectile.friction = 0.01;
projectile.direction = irandom_range(45, 135);
projectile.image_xscale = 0.25;
projectile.image_yscale = 0.25;