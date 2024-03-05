#macro HEAL_CHANCE 5
//// @description drop loot
var roll = irandom(99); // % chance
var drop = undefined;

if (roll < HEAL_CHANCE) {
	// 20% chance to drop heal
	drop = instance_create_layer(x, y, "GUI", obj_heal);
	drop.image_xscale = 0.3;
	drop.image_yscale = 0.3;
} else if (roll < 20) {
	// 20% to drop boost
} else {
	// 60% chance to drop nothing
}

var xp = instance_create_layer(x, y, "GUI", obj_xp);
xp.multiply_xp(xp_multiplier);
