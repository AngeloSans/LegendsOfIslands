
var varx = camera_get_view_x(view_camera[0]);
var vary = camera_get_view_y(view_camera[0]);
var view_width = camera_get_view_width(view_camera[0]);
var view_height = camera_get_view_height(view_camera[0]);
var object_height = sprite_width * 1.5;
var object_width = sprite_width * 7.2; 
var desired_x_position = varx + view_width - object_width;
var desired_y_position = vary + view_height - object_height;
x = desired_x_position;
y = desired_y_position;