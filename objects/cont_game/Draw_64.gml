/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_button);
draw_set_colour(c_white);
draw_sprite_ext(spr_ticket,0,4,24,2*txscale,2*tyscale,0,c_white,1);
draw_text_transformed(80,16,"x " + string(g_tickets),4,4,0);