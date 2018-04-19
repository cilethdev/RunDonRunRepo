/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_player) {
	if distance_to_object(obj_player) < room_width {
		x += vx*facing;
		image_xscale = facing;
		if	!place_meeting(x+(16*facing),y+1,obj_solid)	|| place_meeting(x+(vx*facing),y,obj_solid) {
			facing *= -1;
		}
	}
}