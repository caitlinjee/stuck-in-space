// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function weapon_damage(_damage) constructor {
	damage = _damage;
}

// weapons
global.weapon_list = {
	original_weapon : new weapon_damage(1),
	upgraded_weapon : new weapon_damage(2),
}