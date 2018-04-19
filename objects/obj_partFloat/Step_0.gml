/// @description Insert description here
// You can write your code in this editor
y += vy;
image_angle += spin*dir;

t = (t+1) mod 360;
shift = amp*sin(degtorad(t));

x = xstart+shift;

if life {
	life--;
} else {
	instance_destroy();
}