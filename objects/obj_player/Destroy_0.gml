/// @description Insert description here
// You can write your code in this editor
var cam,camx,camy,camw,camh;
cam  = view_get_camera(view_current);
camx = camera_get_view_x(cam);
camy = camera_get_view_y(cam);
camw = camera_get_view_width(cam);
camh = camera_get_view_height(cam);

instance_create_layer(camx+camw/2,camh/2,"UI",obj_ripDon);