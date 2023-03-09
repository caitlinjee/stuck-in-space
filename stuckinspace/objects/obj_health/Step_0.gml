/// @description Insert description here
// You can write your code in this editor

event_inherited();

// collected
if place_meeting(x, y, obj_player) {
	//heal the player 
	obj_player.current_hp += heal;
	//destroy self 
	instance_destroy();
}