/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player) {
		camXT = obj_player.x - camW/2;
		//camYT = obj_player.y - camH/2;
}

camX = camXT; //lerp(camX,camXT,0.2);
camY = camYT; //lerp(camY,camYT,0.2);

if shake {
	shake--;
	camX += irandom_range(-shakeAmt,shakeAmt);
	camY += irandom_range(-shakeAmt,shakeAmt);
} else {
	shakeAmt = 1;
}
camX = clamp(camX,0,room_width-camW);
camera_set_view_pos(cam,camX,camY);

if keyboard_check_pressed(vk_f1) {
	if room_speed == 60 {
		room_speed = 30;
	} else {
		room_speed = 60;
	}
}
