/// @description Insert description here
// You can write your code in this editor

event_inherited();

// collected
if place_meeting(x, y, obj_player) {
	//heal the player 
	obj_player.current_hp += heal;
	
	var _collected = instance_create_layer(x, y, "Instances", obj_collected_popup);
	
	if obj_player.current_hp >= obj_player.max_hp {
		_collected.towrite = "already max health!";
	} else {
		_collected.towrite = "+1 health";
	}
	_collected.write_height = 120;
	
	//destroy self 
	instance_destroy();
}