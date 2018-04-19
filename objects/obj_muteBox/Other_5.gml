/// @description Insert description here
// You can write your code in this editor
ini_open("settings.ini");
ini_write_real("settings",string(valueIndex),mute);
ini_close();
g_mute = mute;