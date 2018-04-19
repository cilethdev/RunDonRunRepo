/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
case g_play:
if instance_exists(obj_player) && !dead {
	if distance_to_object(obj_player) < room_width {
		x += vx*facing;
		image_xscale = facing;
		if	!place_meeting(x+(16*facing),y+1,obj_solid)	|| place_meeting(x+(vx*facing),y,obj_solid) {
			facing *= -1;
		}
	}
}
image_xscale = facing;
if dead > 0 {
	dead--;
	vy = Approach(vy,10,0.4);
	x += vx;
	y += vy;
	if dead == 0 {
		instance_destroy();
	}
}
if flash flash--;
break;
}