/// @description Insert description here
// You can write your code in this editor
var onGroundPrev = onGround;
onGround = OnGround();

if onGround {
	if !landed && state != HOVERBOARD {
		landed = true;
		xscale = 1.5;
		yscale = 0.5;
		
		bounce = false;
		
		repeat(irandom_range(6,10)) {
			var landingDust = instance_create_layer(x+random_range(-24,24),bbox_bottom+random_range(-2,0),"Instances",part_dust);
		}
		
		//sfx
		/*
		if place_meeting(x,y+1,obj_solid) {
			var solidType = instance_place(x,y+1,obj_solid);
			if solidType.sprite_index == spr_solidS || solidType.sprite_index == spr_solidSL || solidType.sprite_index == spr_solidSR {
				var snd = choose(snd_footstepWood1,snd_footstepWood2,snd_footstepWood3,snd_footstepWood4)
			} else {
				var snd = choose(snd_footstepStone1,snd_footstepStone2,snd_footstepStone3,snd_footstepStone4)
			
			
		}}*/
		//var snd = choose(snd_grunt1,snd_grunt2,snd_grunt3);
		//PlaySound(snd,0,0,random_range(0.95,1.05));
	}
} else {
	landed = false;
}

if !place_meeting(x,y,obj_quickSand) {
	inSand = false;
}
