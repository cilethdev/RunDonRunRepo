/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
case g_play:

var center = bbox_left+16;
if instance_exists(obj_player) && !dead {
	if distance_to_object(obj_player) < 192 {
		if !playSound {
			playSound = true;
			//SFX
			PlaySound(snd_snakeRattle,0,0,random_range(0.9,1.1));
		}
		if obj_player.x > x {
			facing = 1;
		} else {
			facing = -1;
		}
		if place_meeting(center+(16*facing),y+1,obj_quickSand) {
			vx = Approach(vx,(vxMax*facing),acc);
		} else {
			vx = 0;
		}
		x += vx;
	}
	
	if distance_to_object(obj_player) < 360 {
		t = (t+inc) mod 360;
		var shift = amp*sin(degtorad(t));
		image_xscale = 1+shift;
		image_yscale = 1-shift;
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