/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_healthbar(x, y - 10, x + sprite_width, y - 2, 100 * (current_hp / max_hp),
	c_black, c_red, c_green, 0, true, true);
	