/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
case g_play:
repeat(abs(vy)) {
	if !place_meeting(x,y+sign(vy),obj_solid) {
		y += sign(vy);
	} else {
		vy = 0;
		break;
	}
}
break;
}