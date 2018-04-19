/// @description Insert description here
// You can write your code in this editor
prevState = g_state;
g_state = g_dialogue;

drawText = false;
boxUp = false;
closeBox = false;
boxH = 0;
boxHT = camera_get_view_height(view_camera)/3;

line = 0;
lines[0] = "";
letter = 1;

nextT = 0;
nextFlash = 0;
showNext = false;