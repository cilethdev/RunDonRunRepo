/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y,obj_player) {
	showIndicator = false;
	indicatorT = 0;
	t = 0;
}
if showIndicator {
	t = (t+1) mod 360;
	indicatorOffset = amp*sin(degtorad(t));
}