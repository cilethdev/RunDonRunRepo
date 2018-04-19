/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
	case g_play:
		t = (t+inc) mod 360;
		y = ystart+(amp*sin(degtorad(t)));
	break;
}