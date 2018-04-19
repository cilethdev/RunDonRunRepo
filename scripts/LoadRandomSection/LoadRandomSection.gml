sectionType = argument0;

switch(sectionType) {
	case 0:
		return ds_list_find_value(sectionStartList,floor(random(ds_list_size(sectionStartList))));
	break;
	case 1:
		return ds_list_find_value(sectionEndList,floor(random(ds_list_size(sectionEndList))));
	break;
	case 2:
		return ds_list_find_value(sectionJumpList,floor(random(ds_list_size(sectionJumpList))));
	break;
	case 3:
		return ds_list_find_value(sectionEnemyList,floor(random(ds_list_size(sectionEnemyList))));
	break;
	case 4:
		return ds_list_find_value(sectionHazardList,floor(random(ds_list_size(sectionHazardList))));
	break;
}