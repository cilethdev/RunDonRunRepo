/// @description Insert description here
// You can write your code in this editor
var midx,midy;
midx = bbox_left+sprite_width/2;
midy = bbox_top+sprite_height/2;
repeat(irandom_range(8,12)) {
	instance_create_layer(midx+random_range(-16,16),midy+random_range(-8,40),"Instances",part_ticket);
} 
cont_game.txscale = 1.2;
cont_game.tyscale = 1.2;