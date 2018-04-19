/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
case g_play:
	if instance_exists(obj_player) {
		if obj_player.x > bbox_left && !dropped {
			dropped = true;
			drop = true;
			
			//SFX
			PlaySound(snd_thwompMoving,0,0,1);
		}
	}
	if drop {
		if dropDelay {
			dropDelay--;
			xOff = random_range(-2,2);
			yoff = random_range(-2,2);
		} else {
			xOff = 0;
			yOff = 0;
			vy = Approach(vy,vyMax,grav);
			repeat(abs(vy)) {
				if !place_meeting(x,y+sign(vy),obj_solid) {
					y += sign(vy);
				} else {
					vy = 0;
					drop = false;
					Shake(30,5);
					
					//SFX
					if audio_is_playing(snd_thwompMoving) {
						audio_stop_sound(snd_thwompMoving);
					}
					PlaySound(snd_thwompImpact,0,0,1);
				}
			}
		}
	}
break;
}