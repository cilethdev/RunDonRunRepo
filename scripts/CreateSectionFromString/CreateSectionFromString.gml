var _sect   = argument0;
var _sectionStringData = argument1;

for(c=1;c<string_length(_sectionStringData)+1;c++) {
	switch(string_char_at(_sectionStringData,c)) {
		case "0":
		break;
		case "1": //solid object
			instance_create_layer(
			(_sect*sectionWidth ) + (((c-1) mod sectionTilesx)*gridSize ) ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Collision",obj_solid);
		break;
		
		//Game objects
		case "P": //player spawn
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_player);
		break;
		
		case "E": //end of room
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_roomEnd);
		break;
		
		case "D": //double jump gem
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_doubleJump);
		break;
		
		case "U": //power ups
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_powerUp);
		break;
		
		case "T":
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_ticket);
		break;
		
		case "B":
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"BGObjects",obj_bgObject);
		break;
			
		
		//Enemies
		case "F": 
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_flyer);
		break;
		case "W": 
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_walker);
		break;
			
		case "M": 
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_spikeWalker);
		break;
			
		case "J": 
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_jumper);
		break;
			
		case "N": 
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_sandSnake);
		break;
		
		//Hazards
		case "S": //Spikes
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Hazard",obj_spikes);
		break;
		
		case "Q": //QuickSand
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Quicksand",obj_quickSand);
		break;
		
		
		case "H":
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Hazard",obj_thwomp);
		break;
		
		case "C": 
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Hazard",obj_circleAxe);
		break;
		
		case "R": 
			instance_create_layer(
			(_sect*sectionWidth)  + (((c-1)  mod sectionTilesx)*gridSize)  ,
			(floor((c-1)/sectionTilesx)*gridSize) ,
			"Instances",obj_turret);
		break;
		
	}
}
