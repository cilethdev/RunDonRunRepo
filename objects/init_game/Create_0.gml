/// @description Insert description here
// You can write your code in this editor
globalvar g_play;
g_play = 0;
globalvar g_pause;
g_pause = 1;
globalvar g_menu;
g_menu = 2;
globalvar g_dialogue;
g_dialogue = 3;
globalvar g_debug;
g_debug = 4;

globalvar g_state;
g_state = g_play;


/*
global.settings = ds_map_secure_load("settings.json");
if !ds_map_secure_load("settings.json") {
	global.settings = ds_map_create();
	ds_map_add(global.settings,"masterVolume",1);
	ds_map_add(global.settings,"music",1);
	ds_map_add(global.settings,"sfx",1);
	ds_map_add(global.settings,"mute",1);
	ds_map_secure_save(global.settings,"settings.json");
} else {
	show_message("map loaded");
	global.settings = ds_map_secure_load("settings.json");
}*/

ini_open("settings.ini");

//Sound channels
globalvar g_masterVolume;
g_masterVolume = ini_read_real("settings","masterVolume",1);
globalvar g_music;
g_music = ini_read_real("settings","music",1);
globalvar g_sfx;
g_sfx = ini_read_real("settings","sfx",1);
globalvar g_mute;
g_mute = ini_read_real("settings","mute",1);

ini_close();

room_goto_next();