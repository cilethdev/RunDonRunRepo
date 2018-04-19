/// @description Insert description here
// You can write your code in this editor
if !surface_exists(transitionSurf) {
	transitionSurf = surface_create(640,384);
}
surface_set_target(transitionSurf);
draw_clear_alpha(c_white,1);
draw_set_colour(c_black);
draw_rectangle(0,0,640,384,-1);
gpu_set_blendmode(bm_subtract);
draw_set_colour(c_white);
draw_circle(528,256,circleRadius,-1);
gpu_set_blendmode(bm_normal);
surface_reset_target();
var cam = view_get_camera(view_current);
draw_surface(transitionSurf,camera_get_view_x(cam),0);
