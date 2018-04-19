/// @description Insert description here
// You can write your code in this editor

if shader_is_compiled(shdr_flash) {
	if flash {
		shader_set(shdr_flash);
		draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,image_angle,image_blend,image_alpha);
		shader_reset();
		draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,image_angle,image_blend,0.5);
	} else {
		draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,image_angle,image_blend,image_alpha);
	}
} else {
	draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,image_angle,image_blend,image_alpha);
}