// unpause function
function unpause() 
{
	// Unpause.
	global.paused = false;
	audio_resume_all();

	// Apply to all instances.
	with (all) 
	{
		if (variable_instance_exists(id, "base_speed")) {
			// Stop moving the instance.
			speed = base_speed;
	
			// Stop animation.
			image_speed = 1;
		}
	}
}