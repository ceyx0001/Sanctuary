event_inherited();
// mouse states
released = false;
image_xscale = 2.5;
image_yscale = 2.5;

function open_start_menu() {
	instance_create_layer(1920 / 2, 1080 / 2, "GUI", obj_pause_screen);
	pause();
	audio_play_sound(snd_pause_menu, 1, false);
	audio_sound_gain(snd_pause_menu, 1, false);
	released = false;
}