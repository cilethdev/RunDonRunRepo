/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
case g_play:
image_angle += spin*dir;
scale += 0.005;
image_xscale = scale;
image_yscale = scale;
y += vy;
if life {
	life--;
} else {
	instance_destroy();
}
//image_alpha = Approach(image_alpha,0,1/60);
//if image_alpha == 0 {
	//instance_destroy();
//}
break;
}