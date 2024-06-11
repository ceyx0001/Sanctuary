// mouse states
event_inherited();
released = false;
parent = undefined;

function close_screen() {
	audio_play_sound(snd_pause_menu, 1, false);
	instance_destroy(parent);
	instance_destroy();
}