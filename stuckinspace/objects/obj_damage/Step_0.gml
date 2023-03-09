/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// collected
if place_meeting(x, y, obj_player) {
	//heal the player 
	obj_player.damage += adddamage;
	//destroy self 
	instance_destroy();
}