/// @description Insert description here
// You can write your code in this editor
switch(type) {
	case 0: //pants
		with(other) {
			armor++;
			outfit = 1;
		}
		var pu = instance_create_layer(x,y,"UI",obj_powerUpText);
			pu.text = choose("NICE PANTS!","FOR ONLY $300!","WOAH LOOK AT THAT FIT","DAMN I LOOK GOOD IN THESE!","THEY EVEN HAVE HOLES");
	break;
	case 1: //hoverboard
		with(other) {
			state = HOVERBOARD;
			powerUpT = room_speed*10;
			vy = 0;
		}
		var pu = instance_create_layer(x,y,"UI",obj_powerUpText);
			pu.text = choose("HOVERBOARD!","SMOOTH RIDER!","LOOK AT ME NOW DOC!","THE FUTURE IS NOW!");
	break;
}
PlaySound(snd_powerUp,0,0,1);
instance_destroy();