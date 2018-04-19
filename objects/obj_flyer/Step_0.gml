/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player) {
	if distance_to_object(obj_player) < room_width {
		t = (t+inc) mod 360;
		y = ystart + (amp*sin(degtorad(t)));
	}
	
	if distance_to_object(obj_player) < 360 {
		t2 = (t2+inc2) mod 360;
		var shift = amp2*sin(degtorad(t2));
		image_xscale = 1+shift;
		image_yscale = 1-shift;
	}
	if flash flash--;
	if flash == 0 {
		instance_destroy();
	}
}