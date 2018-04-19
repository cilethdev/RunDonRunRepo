/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_white);
draw_set_alpha(alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_intro);
if is_string(scene[place,0]) {
	if place < array_height_2d(scene) {
		draw_text(x,y,string(scene[place,0]));
		//draw_text_transformed(x,y,string(scene[place,0]),4,4,0);
		//draw_text_ext_transformed(x,y,string(scene[place,0]),string_height(scene[place,0])+8,room_width-32,1,1,0)
	}
} else 
if sprite_exists(scene[place,0]) {
	draw_sprite(scene[place,0],0,room_width/2,room_height/2);
}
draw_set_alpha(1);

/*
if t > 600 {
	draw_set_font(fnt_button);
	draw_set_halign(fa_left);
	draw_set_colour(c_dkgray);
	draw_text(8,room_height-16,"'ESC' TO SKIP");
}