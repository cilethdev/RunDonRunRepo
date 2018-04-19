/// @description Insert description here
// You can write your code in this editor
mute = 1;
valueIndex = noone;
if valueIndex != noone {
	ini_open("settings.ini");
	mute = ini_read_real("settings",string(valueIndex),1);
	ini_close();
}