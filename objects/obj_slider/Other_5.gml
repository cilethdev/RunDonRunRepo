/// @description Insert description here
// You can write your code in this editor
ini_open("settings.ini");
ini_write_real("settings",string(valueIndex),value);
ini_close();
switch(valueIndex) {
	case "masterVolume":
		g_masterVolume = value;
	break;
	case "music":
		g_music = value;
	break;
	case "sfx":
		g_sfx = value;
	break;
}