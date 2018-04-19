/// @description Insert description here
// You can write your code in this editor
draw_self();
surface_set_target(cont_partSurf.partSurf);
draw_set_colour(c_white);
draw_circle(x,y,3*scale,-1);
surface_reset_target();