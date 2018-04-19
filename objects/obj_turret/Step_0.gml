/// @description Insert description here
// You can write your code in this editor

if canFire {
	rumbleT++;
	xoff = random_range(-2,2);
	yoff = random_range(-2,2);
	if rumbleT > 30 {
		rumbleT = 0;
		canFire = false;
		fireCD = 90;
		var fireball = instance_create_layer(x-16,y+16,"Instances",obj_fireBall);
	}
} else {
	xoff = 0;
	yoff = 0;
}
	
if fireCD > 0 fireCD--;
if fireCD == 0 {
	canFire = true;
}