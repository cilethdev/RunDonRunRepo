/// @description Insert description here
// You can write your code in this editor
var l,r,u,d,ul,ur,dl,dr;
l  = place_meeting(x-1,y,obj_solid);
r  = place_meeting(x+1,y,obj_solid);
u  = place_meeting(x,y-1,obj_solid);
d  = place_meeting(x,y+1,obj_solid);
ul = position_meeting(bbox_left-16,bbox_top-16,obj_solid);
ur = position_meeting(bbox_right+16,bbox_top-16,obj_solid);
dl = position_meeting(bbox_left-16,bbox_bottom+16,obj_solid);
dr = position_meeting(bbox_right+16,bbox_bottom+16,obj_solid);

//Top/bottom
if l && r && d {
	var tile = choose(1,2);
	if tile == 1 {
		sprite_index = spr_solidT1;	
	}
	if tile == 2 {
		sprite_index = spr_solidT2;	
	}
}

if l && r && u {
	var tile = choose(1,2);
	if tile == 1 {
		sprite_index = spr_solidB1;	
	}
	if tile == 2 {
		sprite_index = spr_solidB2;	
	}
}

//single platform
if l && r && !u && !d && y != 0 {
	sprite_index = spr_solidS;
}
if !l && r && !u && !d && y != 0 {
	sprite_index = spr_solidSL
}
if l && !r && !u && !d && y != 0 {
	sprite_index = spr_solidSR;
}

//Top Corners
if !l && r && !u && d {
	sprite_index = spr_solidTL;
}

if l && !r && !u && d {
	sprite_index = spr_solidTR;
}

//Bottom corners
if !l && r && u && !d {
	sprite_index = spr_solidBL;
}

if l && !r && u && !d {
	sprite_index = spr_solidBR;
}

//Sides
if !l && r && u && d {
	sprite_index = spr_solidL;
}
if l && !r && u && d {
	sprite_index = spr_solidR;
}

//ceiling cleanup
if !l && r && y < 32 {
	sprite_index = spr_solidBL;
}
if l && !r && y < 32 {
	sprite_index = spr_solidBR;
}
if l && r && y < 32 {
	var tile = choose(1,2);
	if tile == 1 {
		sprite_index = spr_solidB1;	
	}
	if tile == 2 {
		sprite_index = spr_solidB2;	
	}
}



//Blank tiles
if l && r && u && d && ul && ur && dl && dr {
	
	//var chance = irandom(100);
	//if chance == 10 {
	//	sprite_index = spr_solidBlank;	
	//	image_index = choose(1,2);
	//} else {
		sprite_index = spr_solidBlank;
	//}
}
if l && r && d && y < room_height/4{
	sprite_index = spr_solidBlank;
}
if l && r && u && y > room_height/2 {
	sprite_index = spr_solidBlank;
}


//Connecting corners
if l && r && u && d && ul && ur && dl && !dr { //top left
	sprite_index = spr_solidTLC;
}

if l && r && u && d && ul && ur && !dl && dr { //top right
	sprite_index = spr_solidTRC;
}

if l && r && u && d && ul && !ur && dl && dr { //bottom left
	sprite_index = spr_solidBLC;
}
if l && r && u && d && !ul && ur && dl && dr { //bottom right
	sprite_index = spr_solidBRC;
}
