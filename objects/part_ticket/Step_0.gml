/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
case g_play:
vx = Approach(vx,0,0.05);
vy = Approach(vy,-0.5,0.05);
x += vx;
y += vy;
if life > 0 {
	life--;
} else {
	instance_destroy();
}
break;
}