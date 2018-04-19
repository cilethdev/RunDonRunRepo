/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
	case g_play:
#region //collision
repeat(abs(vy)) {
	if !place_meeting(x,y+sign(vy),obj_solid) {
		y += sign(vy);
	} else {
		vy = 0;
		break;
	}
}

repeat(abs(vx)) {
	if state == HOVERBOARD {
		if !place_meeting(x+sign(vx),y,obj_solid) && !place_meeting(x+sign(vx),y,obj_thwomp){
			x += sign(vx);
		} else {
			if state == HOVERBOARD {
				vx *= -0.5;
			}
			break;
		}
	} else {
		if !place_meeting(x+sign(vx),y,obj_solid) {
			x += sign(vx);
		} else {
			break;
		}
	}
}

if y > room_height {
	instance_destroy();
	if !deathSound {
		deathSound = true;
		PlaySound(snd_playerFall,0,0,random_range(0.95,1.05));
	}
}
#endregion

#region //animation
xscale = Approach(xscale,1,0.04);
yscale = Approach(yscale,1,0.04);

switch(state) {
	case IDLE:
		sprite_index = sprites[outfit,4];
		image_speed = 0;
	break;
	case RUN:
		sprite_index = sprites[outfit,0];	
		image_speed = 1;
	break;
	case JUMP:
		if vy < 0 {
			sprite_index = sprites[outfit,1];
			image_speed = 0;
		} else {
			sprite_index = sprites[outfit,2];
			image_speed = 0;
		}
	break;
	case PUSH:
		sprite_index = sprites[outfit,3];
		image_speed = 0;
	break;
	case HOVERBOARD:
		if vy >= 0 {
			sprite_index = sprites[outfit,5];
		} else {
			sprite_index = sprites[outfit,6];
		}
	break;
	case DEATH:
		global.gameSpeed = 0;
		vx = 0;
		sprite_index = sprites[0,7];
		image_speed = 1;
		if !deathSound {
			deathSound = true;
			PlaySound(snd_playerDeath,0,0,random_range(0.95,1.05));
		}
	break;
}

//Running part
/*
partT = (partT+1) mod 10;
if partT == 1 && onGround && vx > 1 && !place_meeting(x+1,y,obj_solid){
	var runDust = instance_create_layer(bbox_left-random_range(-2,2),bbox_bottom+random_range(-2,0),"Instances",part_dust);
}
*/
var frame = floor(image_index);
if frame == 3 || frame == 8 {
	if !runPart {
		runPart = true;
		
		
		var runDust = instance_create_layer(bbox_left-random_range(-2,2),bbox_bottom+random_range(-2,0),"Instances",part_dust);
			
		//sfx
		if place_meeting(x,y+1,obj_solid) {
			var solidType = instance_place(x,y+1,obj_solid);
			if solidType.sprite_index == spr_solidS || solidType.sprite_index == spr_solidSL || solidType.sprite_index == spr_solidSR {
				var snd = choose(snd_footstepWood1,snd_footstepWood2,snd_footstepWood3,snd_footstepWood4)
			} else {
				var snd = choose(snd_footstepStone1,snd_footstepStone2,snd_footstepStone3,snd_footstepStone4)
			}
			PlaySound(snd,0,0,random_range(0.9,1.1));
		}
	}
	
	
} else {
	runPart = false;
}
#endregion
	break;
	case g_pause:
	image_speed = 0;
	break;
}