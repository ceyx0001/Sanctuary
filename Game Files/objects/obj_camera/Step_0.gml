var mean_x = mean(obj_player.x, obj_pet.x);
var mean_y = mean(obj_player.y, obj_pet.y);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

// Calculate the target position
var final_x = floor(clamp(mean_x, vw / 2, room_width - vw / 2));
var final_y = floor(clamp(mean_y, vh / 2, room_height - vh / 2));

// Calculate the distance of each player from the edge of the view
var dist_x1 = abs(obj_player.x - final_x);
var dist_x2 = abs(obj_pet.x - final_x);
var dist_y1 = abs(obj_player.y - final_y);
var dist_y2 = abs(obj_pet.y - final_y);


// Lerp the camera position towards the target position
var camera_spd = 0.1; // Adjust this value to change the speed of the camera
x += (final_x - x) * camera_spd;
y += (final_y - y) * camera_spd;	

camera_set_view_pos(view_camera[0],  x - floor(vw / 2), y - floor(vh / 2));