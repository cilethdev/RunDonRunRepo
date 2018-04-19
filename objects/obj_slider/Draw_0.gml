/// @description Insert description here
// You can write your code in this editor
var sw = sprite_get_width(sprite_index);
draw_sprite(sprite_index,0,x,y);
draw_sprite_ext(sprite_index,1,x,y,value,1,0,sliderColor,image_alpha);
draw_sprite(sprite_index,2,x,y);

//Slider
draw_set_colour(c_white);
draw_rectangle(bbox_left+sw*value-3,bbox_top-6,bbox_left+sw*value+3,bbox_bottom+6,-1);

//text
if text != "" {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	//shadow
	draw_set_colour(c_black);
	draw_text(bbox_left+sw/2-1,bbox_top - 15,string(text));
	
	draw_set_colour(c_white);
	draw_text(bbox_left+sw/2,bbox_top - 16,string(text));
}