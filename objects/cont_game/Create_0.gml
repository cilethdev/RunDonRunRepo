/// @description Insert description here
// You can write your code in this editor
releaseVersion = false;
global.gameSpeed = 3.5;
globalvar g_tickets;
g_tickets = 0;

room_speed = 60;

if room = level_1 {
	audio_stop_sound(music_lobby);
}

if room = level_1 {
	if !audio_is_playing(music_level1) {
		PlayMusic(music_level1,0,1,1,0.5);
	} 
}

txscale = 1;
tyscale = 1;