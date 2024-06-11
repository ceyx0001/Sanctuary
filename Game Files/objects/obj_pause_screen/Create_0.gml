var first_button_y = 300;
var offset = sprite_get_height(spr_pause_screen) / 6;
instance_create_layer(x, first_button_y + offset, "GUI", obj_button_grimoire);
instance_create_layer(x, first_button_y + offset * 2, "GUI", obj_button_exit);
var resume = instance_create_layer(x, first_button_y + offset * 3, "GUI", obj_button_resume);
resume.parent = self;