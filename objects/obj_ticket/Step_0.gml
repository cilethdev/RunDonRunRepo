/// @description Insert description here
// You can write your code in this editor
switch(g_state) {
case g_play:
	var camx = camera_get_view_x(view_camera);
		if distance_to_point(camx,y) < 640 {
			t = (t+inc) mod 360;
			y = yy + amp*sin(degtorad(t));
		}
break;
}