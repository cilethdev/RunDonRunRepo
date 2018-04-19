/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
case g_play:
image_angle += spin*dir;
scale -= 0.05;
image_xscale = scale;
image_yscale = scale;
if scale <= 0 {
	instance_destroy();
}
break;
}