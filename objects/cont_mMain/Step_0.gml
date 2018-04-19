/// @description Insert description here
// You can write your code in this editor
var kUp,kDown,kEsc;
kUp = keyboard_check_pressed(vk_up);
kDown = keyboard_check_pressed(vk_down);
kEsc = keyboard_check_pressed(vk_escape);

// check if mouse active
if mxp!= mouse_x || myp != mouse_y {
	usingMouse = true;
}
if mxp == mouse_x && myp == mouse_y {
	usingMouse = false;
}
mxp = mouse_x;
myp = mouse_y;

if kEsc || usingMouse {
	input++;
	hover = -1;
	with(obj_button) {
		state = UP;
	}
}

if !input && hover == -1 && (kUp || kDown) {
	hover = 0;
	input++;
	with(obj_button) {
		state = UP;
	}
	var select = hover;
	with(obj_button) {
		if num == select {
			state = HL;
			xscale = 1.2;
			yscale = 1.2;
		}
	}
}

if !input && kUp {
	input++;
	with(obj_button) {
		state = UP;
	}
	hover--;
	if hover < 0 {
		hover = 3;
	}
	var select = hover;
	with(obj_button) {
		if num == select {
			state = HL;
			xscale = 1.2;
			yscale = 1.2;
		}
	}
}

if !input && kDown {
	input++;
	with(obj_button) {
		state = UP;
	}
	hover++;
	if hover > 3 {
		hover = 0;
	}
	var select = hover;
	with(obj_button) {
		if num == select {
			state = HL;
			xscale = 1.2;
			yscale = 1.2;
		}
	}
}

if input {
	input--;
}

layer_hspeed("Background",-0.01);
