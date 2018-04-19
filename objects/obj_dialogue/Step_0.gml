/// @description Insert description here
// You can write your code in this editor
if !boxUp {
	boxH = Approach(boxH,boxHT,10);
	if boxH == boxHT {
		boxUp = true;
	}
} else {
	if line < array_length_1d(lines) {
		//add letter of line each step
		if letter < string_length(lines[line]) {
			letter++;
		} else {
			//at end of letters of line
			if line < array_length_1d(lines)-1 {
				//go to next line
				if keyboard_check_pressed(ord("X")) {
					line++;
					letter = 1;
					nextT = 0;
					nextFlash = 0;
					showNext = false;
				}
				//next indicator
				if nextT < 30 {
					nextT++;
				} else {
					nextFlash = (nextFlash+1) mod 60;
					if nextFlash < 30 {
						showNext = true;
					} else {
						showNext = false;
					}
				}
			} else {
				//close box if end of lines array
				if keyboard_check_pressed(ord("X")) {
					closeBox = true;
					boxHT = 0;
				}
				//next indicator
				if nextT < 30 {
					nextT++;
				} else {
					nextFlash = (nextFlash+1) mod 60;
					if nextFlash < 30 {
						showNext = true;
					} else {
						showNext = false;
					}
				}
			}
		}
	}
}

if closeBox {
	boxH = Approach(boxH,boxHT,10);
	if boxH == boxHT {
		instance_destroy();
	}
}