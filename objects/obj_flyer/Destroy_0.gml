/// @description Insert description here
// You can write your code in this editor
var midx,midy;
midx = bbox_left+sprite_width/2;
midy = bbox_top+sprite_height/2;
repeat(irandom_range(8,16)) {
	var part = instance_create_layer(midx,midy,"Instances",part_enemy);
}