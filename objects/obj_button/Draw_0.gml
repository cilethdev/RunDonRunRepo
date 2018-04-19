/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,image_angle,image_blend,image_alpha);

//draw text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_button);
draw_set_colour(c_white);
if text != "" {
	draw_text_transformed(x,y,string(text),xscale,yscale,image_angle);
}
