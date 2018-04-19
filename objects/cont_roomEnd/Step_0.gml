/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("R")) {
	room_goto(level_1);
}
if keyboard_check_pressed(vk_escape) {
	room_goto(m_main);
}