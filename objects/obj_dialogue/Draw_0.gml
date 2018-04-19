/// @description Insert description here
// You can write your code in this editor
var cam,camx,camy,camw,camh;
cam = view_camera;
camx = camera_get_view_x(cam);
camy = camera_get_view_y(cam);
camw = camera_get_view_width(cam);
camh = camera_get_view_height(cam);

draw_set_colour(c_black);
draw_rectangle(camx,camy+camh,camx+camw,camy+camh-boxH,-1);
draw_set_colour(c_white);
draw_rectangle(camx,camy+camh-boxH,camx+camw,camy+camh-boxH+8,-1);

if boxUp {
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_ext(camx+24,camy+camh-boxH+32,string_copy(lines[line],1,letter),string_height(lines[line])+2,camw-48);
}

draw_text(camx+32,camy+32,string(nextT)+" , "+string(showNext))
if showNext {
	draw_set_colour(c_white);
	draw_text(camx+camw-24,camy+camh-24,"X");
}