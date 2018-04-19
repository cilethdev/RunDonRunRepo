/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self) {
	if mute == 0 {
		mute = 1;
	} else {
		mute = 0;
	}
	
	//sfx
	PlaySound(snd_select,0,0,1);
}

image_index = mute;
g_mute = mute;