/// @description BACKGROUND CONTROL
if instance_exists(obj_player) {
	var camx = camera_get_view_x(view_camera);
	layer_x("Clouds",camx*0.98);
	layer_x("Dunes1",camx*0.9)
	layer_x("Dunes2",camx*0.8)
	layer_x("Interior",camx*0.7);
}

txscale = Approach(txscale,1,0.02);
tyscale = Approach(tyscale,1,0.02);