//Room border
/*
for(i=0;i<room_width;i+=gridSize) {
	instance_create_layer(i,0,"Collision",obj_solid);
	instance_create_layer(i,room_height-gridSize,"Collision",obj_solid);
}
for(j=gridSize;j<room_height-gridSize;j+=gridSize) {
	instance_create_layer(0,j,"Collision",obj_solid);
	instance_create_layer(room_width-gridSize,j,"Collision",obj_solid);
}
*/

//Top border
for(i=-32;i<room_width;i+=gridSize) {
	instance_create_layer(i,-32,"Collision",obj_solid);
}
for(j=-32;j<room_height;j+=gridSize) {
	instance_create_layer(-gridSize,j,"Collision",obj_solid);
	instance_create_layer(room_width,j,"Collision",obj_solid);
}
//set var string for data
var sectionStringData = "";

//load random section based on array index
for(sect=0;sect<sections;sect++) {
	
	sectionStringData = LoadRandomSection(roomSections[sect]);
	
	CreateSectionFromString(sect,sectionStringData);
}