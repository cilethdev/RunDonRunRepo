/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = irandom(4);
image_angle = irandom(360) div 45;
spin = irandom_range(1,4);
dir = choose(-1,1);
vx = 0;
vy = random_range(-0.05,-0.25);
t = 0;
amp = irandom_range(-32,32);
inc = choose(6,12,16)*choose(-1,1);
life = irandom_range(90,180);
scale = 1//random_range(1,3);
image_xscale = scale;
image_yscale = scale;
image_blend = c_aqua;
shift = 0;