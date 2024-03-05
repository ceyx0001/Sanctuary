var icicle = instance_create_layer(mouse_x, mouse_y, "Instances", obj_freeze_icicle);
icicle.image_angle = 270;

audio_play_sound(snd_freeze, 0.5, false);
audio_sound_gain(snd_freeze, 0.5, 0);