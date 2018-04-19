/// @description Insert description here
// You can write your code in this editor
var xx,yy;
xx = obj_player.x;
yy = obj_player.bbox_top-32;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(xx+xoff,yy+yoff,string(text),xscale,yscale,tAngle);