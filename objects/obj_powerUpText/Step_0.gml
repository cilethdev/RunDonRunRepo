/// @description Insert description here
// You can write your code in this editor
xscale = Approach(xscale,1,0.05);
yscale = Approach(yscale,1,0.05);

if duration {
	duration--;
	xoff = random_range(-1,1);
	yoff = random_range(-1,1);
} else {
	instance_destroy();
}