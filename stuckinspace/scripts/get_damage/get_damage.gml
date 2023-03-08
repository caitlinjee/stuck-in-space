// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*function get_damage(_damaged_obj){
	if place_meeting( x, y, _damaged_obj) {
		var _inst =  instance_place( x, y, _damaged_obj );
	
		//take damage from specific instance 
		current_hp -= _inst.damage;
	
		//tell the damage instance to destroy itself
		_inst.destroy = true;
	}
}*/

function get_damage_create(_iframes = false) { //_hp = 10
	if _iframes == true {
		iframeTimer = 0;
		iframeNum = 90;
	}
	
	if _iframes == false {
		damage_list = ds_list_create();
	}
	
	/*
	current_hp = _hp;

	*/
	
}

function get_damage(_damaged_obj, _iframes = false) {
	
	if _iframes == true && iframeTimer > 0 {
		iframeTimer--;
		exit;
	}
	
	//receive damage
	if place_meeting( x, y, _damaged_obj) {
		//getting a list of the damage instances
		//create ds list and copy instances to it 
		var _instList = ds_list_create();
		instance_place_list( x, y, _damaged_obj, _instList, false);
	
		//get the size of our list
		var _listSize = ds_list_size( _instList );
	
		var _hitConfirm = false;
		//loop through the list
		for (var i = 0; i < _listSize; i++ ) {

			//get a damage object instance from the list
			var _inst = ds_list_find_value( _instList, i );
		
			//check if instance is already in the damage list
			if _iframes == true || ds_list_find_index(damage_list, _inst) == -1 {

				if _iframes == false {
					ds_list_add(damage_list, _inst);
				}
			
				//take damage from specific instance 
				current_hp -= _inst.damage;
				_hitConfirm = true;
				
				//tell the damage instance impacted
				_inst.hitConfirm = true;
			}	
		}
		
		
			// set iframes if hit
			if _iframes == true && _hitConfirm {
				iframeTimer = 90;
			}
		
			//free memory by destroying the ds list
			ds_list_destroy(_instList );
	}
	
	//clear the damage list of objects that don't exist anymore or arent touching anymore 
	if _iframes == false {
		var _damageListSize = ds_list_size (damage_list);

		for (var i = 0; i < _damageListSize; i++ ) {
			//if not touching the damage instance anymore, remove it from the list AND set the loop back 1 position 
			var _inst = ds_list_find_value( damage_list, i );
			if !instance_exists( _inst) || !place_meeting( x, y, _inst) {
				ds_list_delete( damage_list, i );
				i--;
				_damageListSize--;
			}
		}
	}
	
}