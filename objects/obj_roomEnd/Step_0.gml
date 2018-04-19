/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player) {
	if obj_player.bbox_left > x+32 {
		global.gameSpeed = 0;
		obj_player.state = obj_player.RUN;
		obj_player.vx = 0;
		
		//end game code here
		instance_create_layer(x,y,"Transition",obj_endTransition);
	}
}