// Not paused by default.
global.paused = false;

// pause function
function pause() 
{
	audio_pause_all();
	// Pause the game.
	global.paused = true;

	// Apply the following code to all instances...
	with (all) 
	{
		if (variable_instance_exists(id, "base_speed")) {
			// Stop moving the instance.
			speed = 0;
	
			// Stop animation.
			image_speed = 0;
		}
	}
}