/// @description Insert description here
// You can write your code in this editor
if lines[0] != "" {
	indicatorT++;
	if indicatorT > 60 {
		showIndicator = true;
	}

	if keyboard_check_pressed(ord("E")) && !instance_exists(obj_dialogue) {
		var msg = instance_create_layer(x,y,"Dialogue",obj_dialogue);
			if array_length_1d(lines) > 0 {
				for(i=0;i<array_length_1d(lines);i++) {
					msg.lines[i] = lines[i];
				}
			}
	}
}