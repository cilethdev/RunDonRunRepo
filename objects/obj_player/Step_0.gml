/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
	case g_play:
	#region //Movement
if state != DEATH {
var kJump,kJumpP,kJumpR;
kJump		= keyboard_check(vk_space);
kJumpP		= keyboard_check_pressed(vk_space);
kJumpR		= keyboard_check_released(vk_space);

if state != HOVERBOARD {
if (onGround || (place_meeting(x,y,obj_quickSand) && vy > 0)) && vx != 0 {
	state = RUN;
}
if onGround && vx == 0 && state != DEATH {
	state = IDLE;
}
if !onGround && !place_meeting(x,y,obj_quickSand) {
	state = JUMP;
}
if onGround && place_meeting(x+1,y,obj_solid) {
	state = PUSH;
}

//temp move warp
move_wrap(true,false,0);
var tempAcc,tempFric;
tempAcc = acc;
tempFric = 0.5;

vxMax = global.gameSpeed;
if place_meeting(x,y,obj_quickSand) {
	tempAcc = 0.1;
	vxMax = 1;
}

//Approach game speed
vx = Approach(vx,vxMax,tempAcc);

var tempGrav,tempGravMax,tempAcc,tempFric;
if !onGround {
	tempGrav = grav;
	tempGravMax = vyMax;
	if place_meeting(x,y,obj_quickSand) {
		if !inSand {
			inSand = true;
			vy *= 0.25;
		}
		tempGrav = 0.025;
		tempGravMax = 1;
	}
	vy = Approach(vy,tempGravMax,tempGrav);
} else {
	vy = 0;
	jNum = 0;
}
if vy > 0 && place_meeting(x,y,obj_quickSand) {
	jNum = 0;
}

if kJumpP && jNum < 1 {
	vy = -jspd;
	jNum++;
	
	if place_meeting(x,y,obj_quickSand) {
		vy = -jspd*0.75;
	}
	
	xscale = 0.5;
	yscale = 1.5;
	
	repeat(irandom_range(4,6)) {
		var jumpDust = instance_create_layer(x+random_range(-16,16),bbox_bottom+random_range(-12,2),"Instances",part_dust);
	}
	
	//SFX
	PlaySound(snd_jump,0,0,random_range(0.9,1));
}
if kJumpR && !bounce {
	if vy < -2 {
		vy = -2;
	}
}
} else {
	if powerUpT {
		powerUpT--;
		global.gameSpeed = 5;
		
		if powerUpT < room_speed*3 {
			flashT = (flashT+1) mod 60;
			if flashT == 1 {
				flash = 15;
			}
		}
		var tempGrav,tempMaxGrav,tempAcc;
		if !onGround && !place_meeting(x,y+1,obj_quickSand) {
			tempGravMax = 3;
			tempGrav = 0.2;
			vy = Approach(vy,tempGravMax,tempGrav);
		} else {
			vy = 0;
		}
		var tempAcc,tempFric;
		tempAcc = acc;
		tempFric = 0.5;

		vxMax = global.gameSpeed;

		//Approach game speed
		vx = Approach(vx,vxMax,tempAcc);
		
		if kJump {
			vy = Approach(vy,-4,1);
		}
	} else {
		global.gameSpeed = 3.5;
		state = JUMP;
		jNum = 0;
	}
}
} else {
	if !onGround {
	vy = Approach(vy,vyMax,grav);
	} else {
		vy = 0;
		jNum = 0;
	}	
}

if flash flash--;
if cantHit cantHit--;
#endregion
	break;
	case g_pause:
	break;
	case g_menu:
	break;
	case g_debug:
	break;
}