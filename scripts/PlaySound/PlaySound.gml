/// @param Index
/// @param Priority
/// @param Loops
/// @param Pitch

audio_sound_gain(argument0,(g_sfx*g_masterVolume)*g_mute,0);
audio_sound_pitch(argument0,argument3);
audio_play_sound(argument0,argument1,argument2);