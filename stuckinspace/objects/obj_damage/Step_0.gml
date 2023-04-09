/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// collected
if place_meeting(x, y, obj_player) {
	//heal the player 
	obj_player.firerate -= addfirerate ;
	
	var _collected = instance_create_layer(x, y, "Instances", obj_collected_popup);
	_collected.towrite = "Fire rate increased!";
	_collected.write_height= 100;
	
	obj_sound_manager.gunCollected = true;
	
	//destroy self 
	instance_destroy();
}