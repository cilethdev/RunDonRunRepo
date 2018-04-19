/// @description Insert description here
// You can write your code in this editor
if other.y < bbox_top+16 && !flash {
	if other.state == other.HOVERBOARD {
	other.vy = -2;
	} else {
		other.vy = -other.jspd;
	}
	other.bounce = true;
	flash = 5;
	Shake(10,3);
	
	//SFX
	PlaySound(snd_flyer,0,0,random_range(0.9,1.1));
} else {
	//HitPlayer();
}