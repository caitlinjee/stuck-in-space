// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_damage(_damaged_obj){
	if place_meeting( x, y, _damaged_obj) {
		var _inst =  instance_place( x, y, _damaged_obj );
	
		//take damage from specific instance 
		current_hp -= _inst.damage;
	
		//tell the damage instance to destroy itself
		_inst.destroy = true;
	}
}