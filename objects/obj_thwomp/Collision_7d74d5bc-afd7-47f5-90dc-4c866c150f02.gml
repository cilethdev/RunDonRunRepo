/// @description Insert description here
// You can write your code in this editor
other.vx = 0;
other.vy = vy;
if place_meeting(x,y+32,obj_solid) {
	with(other) {
		instance_destroy();
	}
}