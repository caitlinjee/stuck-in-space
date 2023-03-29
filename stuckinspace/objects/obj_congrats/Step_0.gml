/// @description Insert description here
// You can write your code in this editor

//fade in
alpha += alphaSpd;
alpha = clamp ( alpha, 0, 1);

//go back to menu
if mouse_check_button(mb_left) && alpha >= 1 {
	room_goto(rm_menu);
	global.thescore = 0;
	
}

if instance_exists(obj_next_arrow) {
	instance_destroy(obj_next_arrow);	
}