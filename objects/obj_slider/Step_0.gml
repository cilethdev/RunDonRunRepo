/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,bbox_left-2,bbox_top-4,bbox_right+2,bbox_bottom+4) {
	sliding = true;
	//sfx
	PlaySound(snd_hover1,0,0,1);
}

if sliding && mouse_check_button(mb_left) {
	value = clamp((mouse_x-bbox_left)/sprite_get_width(sprite_index),0,1);
}

if mouse_check_button_released(mb_left) {
	sliding = false;
	//sfx
	PlaySound(snd_hover1,0,0,0.9);
}

switch(valueIndex) {
	case "masterVolume":
		g_masterVolume = value;
	break;
	case "music":
		g_music = value;
		if audio_is_playing(music_lobby) {
			audio_sound_gain(music_lobby,((g_music*g_masterVolume)*0.5)*g_mute,0);
		}
	break;
	case "sfx":
		g_sfx = value;
	break;
}