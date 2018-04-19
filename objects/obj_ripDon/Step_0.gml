/// @description Insert description here
// You can write your code in this editor
if fadeAlpha < 0.75  {
	fadeAlpha = Approach(fadeAlpha,0.75,0.05);
	if fadeAlpha == 0.75 {
		shakeT = 30;
		shakeAmt = 6;
		image_index = 0;
		//sfx
		PlaySound(snd_rip,0,0,1);
	}
}

if fadeAlpha == 0.75 && !animationEnded {
	if shakeT == 0 {
		if image_index < 3 {
			image_index++;
			shakeT = 30;
			shakeAmt = 6;
			
			//sfx
			PlaySound(snd_rip,0,0,1);
		} else {
			animationEnded = true;
		}
	}
}

if shakeT {
	shakeT--;
	shakeAmt = Approach(shakeAmt, 0, 6/30);
	xoff = random_range(-shakeAmt,shakeAmt);
	yoff = random_range(-shakeAmt,shakeAmt);
}

if animationEnded {
	if keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("R")) {
		room_restart();
	}
	if keyboard_check_pressed(vk_escape) {
		room_goto(m_main);
	}
	
	showT = (showT + 1) mod 60;
}