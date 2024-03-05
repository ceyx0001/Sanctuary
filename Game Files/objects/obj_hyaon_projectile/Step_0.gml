//// @description animation
event_inherited();
if (global.paused) {
	vspeed = 0;	
	gravity = 0;
} else {
	image_angle += 10;	
	gravity = 0.1;
}

