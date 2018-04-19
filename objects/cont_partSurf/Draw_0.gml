/// @description Insert description here
// You can write your code in this editor
if !surface_exists(partSurf) {
	partSurf = surface_create(room_width,room_height);
}
var surf = partSurf;
surface_set_target(partSurf);
draw_clear_alpha(c_white,0);
surface_reset_target();
if instance_exists(obj_partFloat) {
	with(obj_partFloat) {
		surface_set_target(surf);
		//draw_set_alpha(0.5);
		//gpu_set_blendmode(bm_add);
		//draw_set_colour(c_aqua);
		//draw_circle(x,y,3*scale,-1);
		draw_sprite_ext(spr_glow,0,x,y,scale,scale,image_angle,c_aqua,0.5);
		surface_reset_target();
		draw_set_alpha(1);
		gpu_set_blendmode(bm_normal);
	}
}
draw_set_alpha(0.5);
draw_surface(partSurf,0,0);
draw_set_alpha(1);