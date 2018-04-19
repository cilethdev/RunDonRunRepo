/// @description Insert description here
// You can write your code in this editor
if !dead {
	if other.y < bbox_top+16 {
		other.vy = -4;
		other.bounce = true;
		dead = 30;
		flash = 15;
		vx = 2*(-1*facing);
		vy = -6;
		Shake(10,3);
		
		//SFX
		var snd = choose(snd_pigmyGrunt1,snd_pigmyGrunt2);
		PlaySound(snd,0,0,random_range(0.9,1.1));
		
	} else {
		facing = -1;
		HitPlayer();
	}
}