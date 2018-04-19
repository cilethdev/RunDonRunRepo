/// @description Insert description here
// You can write your code in this editor
if !dead {
	if other.bbox_bottom < bbox_top+16 {
		other.vy = -4;
		if !dead {
			dead = 30;
			flash = 15;
			vx = 3*(-1*facing);
			vy = -10;
			Shake(15,4);
			
			//SFX
			PlaySound(snd_snakeDeath,0,0,random_range(0.9,1.1));
		}
	} else {
		HitPlayer();
	}
}