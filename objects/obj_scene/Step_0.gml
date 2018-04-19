/// @description Insert description here
// You can write your code in this editor
if place < array_height_2d(scene) {
	if fadeIn {
		alpha = Approach(alpha,1,1/scene[place,1]);
		if alpha == 1 {
			fadeIn = false;
		}
	}
	if !fadeIn {
		alpha = Approach(alpha,0,1/scene[place,2]);
		if alpha == 0 {
			fadeIn = true;
			place++;
		}
	}
	if place > array_height_2d(scene)-1 {
		room_goto_next();
	}
}

t++;

if keyboard_check_pressed(vk_escape) {
	room_goto(m_main);
}