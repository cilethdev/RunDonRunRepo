/// @description Insert description here
// You can write your code in this editor
hover = -1;
input = 0;
usingMouse = false;
mxp = mouse_x;
myp = mouse_y;

if audio_is_playing(music_level1) {
	audio_stop_sound(music_level1);
}
if !audio_is_playing(music_lobby) {
	PlayMusic(music_lobby,0,1,1,0.5);
}