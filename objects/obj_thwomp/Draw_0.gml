/// @description Insert description here
// You can write your code in this editor
var dist = point_distance(xstart,ystart,bbox_left,bbox_bottom) div 32;
for(i=0;i<dist;i++) {
draw_sprite_part(sprite_index,image_index,0,0,128,32,xstart+xOff,ystart+(i*32)+yOff);
}
draw_sprite(sprite_index,image_index,x+xOff,y+yOff);