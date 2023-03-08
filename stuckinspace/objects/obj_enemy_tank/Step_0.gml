/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


// shoot at player
var _num_bullets = 4;
var _spread = 45;

var _spread_div = _spread/_num_bullets - 1;

if (cooldown < 1) {
	for (var i = 0; i < _num_bullets; i++) {
		with instance_create_layer(x, y, "Bullets_Layer", obj_bullet_tank) 
		{
		   direction = point_direction(x, y, obj_player.x, obj_player.y) - _spread/2 + _spread_div * i; // Give the bullet a direction
		   speed = 10;
		}
	}
	cooldown = 100;
} else {
	cooldown = cooldown - 1;
}
