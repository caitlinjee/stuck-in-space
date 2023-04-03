/// @description Insert description here
// You can write your code in this editor

event_inherited();

// collected
if place_meeting(x, y, obj_player) {
	
	var _collected = instance_create_layer(x, y, "Instances", obj_collected_popup);
	
	if obj_player.current_hp >= obj_player.max_hp {
		//heal the player 
		obj_player.current_hp += heal;
		_collected.towrite = "Already max health!";
	} else {
		//heal the player 
		obj_player.current_hp += heal;
		_collected.towrite = "+1 health";
	}
	_collected.write_height = 120;
	
	//destroy self 
	instance_destroy();
}