/// @description Insert description here
// You can write your code in this editor

//fade in
alpha += alphaSpd;
alpha = clamp ( alpha, 0, 1);

//restart
if mouse_check_button(mb_left) && alpha >= 1 {
	room_restart();
}