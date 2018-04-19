/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_ripDon) exit;
if g_state == g_play {
	g_state = g_pause;
	var camx,camw,camh;
	camx = camera_get_view_x(view_camera);
	camw = camera_get_view_width(view_camera);
	camh = camera_get_view_height(view_camera);
	var resume  = instance_create_layer(camx+(camw/2),camh/2-48,"Dialogue",obj_button);
		resume.type = 5;
		resume.text = "RESUME";
	var restart = instance_create_layer(camx+(camw/2),camh/2,"Dialogue",obj_button);
		restart.type = 4;
		restart.text = "RESTART";
	var endRun  = instance_create_layer(camx+(camw/2),camh/2+48,"Dialogue",obj_button);
		endRun.type = 0;
		endRun.text = "END RUN";
		endRun.rm   = m_main;
	var cursor = instance_create_layer(mouse_x,mouse_y,"UI",obj_cursor);
	
} else {
	g_state = g_play;
	with(obj_button) {
		instance_destroy();
	}
	if instance_exists(obj_cursor) {
		with(obj_cursor) {
			instance_destroy();
		}
	}
}