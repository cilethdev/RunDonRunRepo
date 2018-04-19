/// @description Insert description here
// You can write your code in this editor
text = "";
value = 1;
valueIndex = noone;
sliderColor = c_yellow;
sliding = false;

if valueIndex != noone {
	ini_open("settings.ini");
	value = ini_read_real("settings",string(valueIndex),1);
	ini_close();
}