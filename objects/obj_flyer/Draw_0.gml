/// @description Insert description here
// You can write your code in this editor
if shader_is_compiled(shdr_flash) {
	if flash {
		shader_set(shdr_flash);
		draw_self();
		shader_reset();
	} else {
		draw_self();
	}
} else {
	draw_self();
}