/// @description clock gui
var time = floor(global.game_time);
var minutes = string(time div gamespeed);
var seconds = string(time mod gamespeed);
if (time mod gamespeed < 10) seconds = "0" + seconds; // Add leading zero

// Set the horizontal and vertical alignment
draw_set_halign(fa_center);
draw_set_valign(fa_top);

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

// Draw the time
draw_set_font(fnt_clock);
draw_set_color(c_white);
draw_text(960, 20, minutes + ":" + seconds);




