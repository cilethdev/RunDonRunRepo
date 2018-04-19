/// @description Insert description here
// You can write your code in this editor
randomize();

gridSize = 32;
sections = 12;
roomSections = [];

sectionTilesx = 40;
sectionTilesy = 12;

sectionWidth  = sectionTilesx * gridSize;
sectionHeight = sectionTilesy * gridSize;

room_width  = (sectionWidth*sections)//+(gridSize*2);
room_height = 384//+(gridSize*2);

for(rooms=0;rooms<sections;rooms++) {
	
	//Start of level
	if rooms == 0 {
		roomSections[rooms] = 0;
	}
	//Level sections
	if rooms > 0 && rooms < sections-1 {
		roomSections[rooms] = choose(2,3,4);
	}
	//End of level
	if rooms == sections-1 {
		roomSections[rooms] = 1;	
	}
}

InitializeAllSections();

//Level Generation
GenerateLevel();

//Clean memory
ds_list_destroy(sectionStartList);
ds_list_destroy(sectionEndList);
ds_list_destroy(sectionJumpList);
ds_list_destroy(sectionEnemyList);
ds_list_destroy(sectionHazardList);
