/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
case g_play:
if instance_exists(obj_player) {
	if distance_to_object(obj_player) < 360 {
	image_angle += spd*dir;
	}
}
break;
}