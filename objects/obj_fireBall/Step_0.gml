/// @description Insert description here
// You can write your code in this editor
if distance_to_point(xstart,ystart) < 320 {
	x += vx;
} else {
	instance_destroy();
}
if place_meeting(x-1,y,obj_solid) {
	instance_destroy();
}