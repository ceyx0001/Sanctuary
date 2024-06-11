////@description end of game - player/pet death
pause();
depth = -9999;
x = vx() + vw() / 2;
y = vy() + vh() / 2;
image_speed = 0;
layer_destroy_instances("Instances");
layer_destroy_instances("GUI");

audio_play_sound(snd_death, 1, false);
audio_sound_gain(snd_death, 0.6, 0);

instance_create_layer(1920 /2, 1080 / 2 + 100, "Death", obj_button_exit);

alpha = 0;
alpha_increase = false;

delay_time = ROOM_SPEED * 0.2;
alarm[0] = delay_time;
alarm[1] = ROOM_SPEED * 1;

