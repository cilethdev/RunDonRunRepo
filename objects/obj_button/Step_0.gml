/// @description Insert description here
// You can write your code in this editor

var mbLeftR,kSelect;
mbLeftR = mouse_check_button_pressed(mb_left);
kSelect = keyboard_check_pressed(ord("X"));

if !position_meeting(mouse_x,mouse_y,self) && state != HL {
	entered = false;
	//with(obj_button) {
	//	state = UP;
	//}
	//state = UP;
}

if position_meeting(mouse_x,mouse_y,self) && state != HL {
	if !entered {
		entered = true;
		xscale = 1.2;
		yscale = 1.2;
		
		//SFX
		PlaySound(snd_hover1,0,0,1);
	}
	with(obj_button) {
		state = UP;
	}
	state = HOVER;
}

switch(state) {
	case UP:
		image_index = 0;
	break;
	case HOVER:
		image_index = 1;
	break;
	case HL:
		image_index = 1;
	break;
	case DOWN:
		image_index = 2;
	break;
}

if (state == HL || state == HOVER) && (mbLeftR || kSelect) {
	switch(type) {
		case 0: //go to room
			if rm != noone {
				room_goto(rm);
				g_state = g_play;
			}
		break;
		case 1: //back button
			
		break;
		case 2:
		
		break;
		case 3: //exit game
			game_end();
		break;
		case 4:
			room_restart();
			g_state = g_play;
		break;
		case 5:
			g_state = g_play;
			with(obj_button) {
				instance_destroy();
			}
			if instance_exists(obj_cursor) {
				with(obj_cursor) {
					instance_destroy();
				}
			}
		break;
	}
	//SFX
	PlaySound(snd_select,0,0,1);
}