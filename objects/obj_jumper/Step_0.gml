/// @description Insert description here
// You can write your code in this editor

switch(g_state) {
case g_play:
if place_meeting(x,y+1,obj_solid) {
	vy = 0;
} else {
	vy = Approach(vy,vyMax,grav);
}

if instance_exists(obj_player) {
	if distance_to_object(obj_player) < 96 && !hasFlashed {
		hasFlashed = true;
		flash = 15;
	}
	if distance_to_object(obj_player) < 64 && !hasJumped {
		hasJumped = true;
		vy = jspd;
		
		//SFX
		PlaySound(snd_jumper,0,0,random_range(0.9,1.1));
	}
	if distance_to_object(obj_player) < 360 {
		t = (t+inc) mod 360;
		var shift = amp*sin(degtorad(t));
		xscale = 1+shift;
		yscale = 1-shift;
	}
}
if !place_meeting(x,y+1,obj_solid) {
	if vy < 0 {
		image_index = 1;
	} else {
		image_index = 2;
	}
} else {
	image_index = 0;
}
if flash flash--;
break;
}

