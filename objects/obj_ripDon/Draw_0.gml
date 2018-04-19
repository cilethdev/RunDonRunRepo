/// @description Insert description here
// You can write your code in this editor
var cam,camx,camy,camw,camh;
cam  = view_get_camera(view_current);
camx = camera_get_view_x(cam);
camy = camera_get_view_y(cam);
camw = camera_get_view_width(cam);
camh = camera_get_view_height(cam);

draw_set_alpha(fadeAlpha);
draw_set_colour(c_black);
draw_rectangle(camx,camy,camx+camw,camy+camh,-1);
draw_set_alpha(1);

draw_sprite(sprite_index,image_index,x+xoff,y+yoff);
if animationEnded && showT > 30 {
	draw_set_font(fnt_button);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_colour(c_black);
	draw_text_transformed(camx+camw/2+1,camh-32,"PRESS R OR SPACE TO RESTART \n PRESS ESC TO RETURN TO LOBBY",1,1,0);
	draw_text_transformed(camx+camw/2-1,camh-32,"PRESS R OR SPACE TO RESTART \n PRESS ESC TO RETURN TO LOBBY",1,1,0);
	draw_text_transformed(camx+camw/2,camh-32+1,"PRESS R OR SPACE TO RESTART \n PRESS ESC TO RETURN TO LOBBY",1,1,0);
	draw_text_transformed(camx+camw/2,camh-32-1,"PRESS R OR SPACE TO RESTART \n PRESS ESC TO RETURN TO LOBBY",1,1,0);
	
	draw_set_colour(c_white);
	draw_text_transformed(camx+camw/2,camh-32,"PRESS R OR SPACE TO RESTART \n PRESS ESC TO RETURN TO LOBBY",1,1,0);
}