x = -32;
y = 0;
gridSize = 32;

xTiles = room_width/gridSize;
yTiles = room_height/gridSize;

var levelData = "";

for(_y=0;_y<yTiles;_y++) {
	for(_x=0;_x<xTiles;_x++) {
		var inst = instance_position(_x*gridSize,_y*gridSize,all);
		
		//try this later
		//var inst = instance_place(_x*gridSize+16,_y*gridSize+16,all);
		
		if (inst != noone) {
			inst = inst.object_index;
		}
			
		switch(inst) {
			case noone:
				levelData += "0"; 
			break;
			case obj_solid:
				levelData += "1"; 
			break;
			case obj_playerSpawn:
				levelData += "P";
			break;
			case obj_roomEnd:
				levelData += "E";
			break;
			
			//Game Objects
			case obj_ticket:
				levelData += "T";
			break;
			case obj_doubleJump:
				levelData += "D";
			break;
			case obj_bgObject:
				levelData += "B";
			break;
			case obj_powerUp:
				levelData += "U";
			break;
			
			//Enemies
			case obj_flyer:
				levelData += "F";
			break;
			case obj_walker:
				levelData += "W";
			break;
			case obj_spikeWalker:
				levelData += "M";
			break;
			case obj_jumper:
				levelData += "J";
			break;
			case obj_sandSnake:
				levelData += "N";
			break; 
			
			//Hazards
			case obj_spikes:
				levelData += "S";
			break;
			case obj_quickSand:
				levelData += "Q";
			break;
			case obj_thwomp:
				levelData += "H";
			break;
			case obj_circleAxe:
				levelData += "C";
			break;
			case obj_turret:
				levelData += "R";
			break;
		}
		
	}
}
saveDir = get_save_filename("*.txt",room_get_name(room)+".txt");
file = file_text_open_write(saveDir);
file_text_write_string(file,levelData);
file_text_close(file);
