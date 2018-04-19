/// @param Index
/// @param Priority
/// @param Loops
/// @param Pitch
/// @param Volume

audio_sound_gain(argument0,((g_music*g_masterVolume)*argument4)*g_mute,0);
audio_sound_pitch(argument0,argument3);
audio_play_sound(argument0,argument1,argument2);