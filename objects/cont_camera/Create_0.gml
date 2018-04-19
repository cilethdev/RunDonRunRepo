/// @description Insert description here
// You can write your code in this editor
cam = view_get_camera(view_current);
camW = camera_get_view_width(cam);
camH = camera_get_view_height(cam);
camX = 0;
camY = 0;
camXT = 0;
camYT = 0;
moving = 0;
shake = 0;
shakeAmt = 1;