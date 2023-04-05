/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


// shoot at player

//transition to shooting state
var _camLeft = camera_get_view_x( view_camera[0] );
var _camRight = _camLeft + camera_get_view_width( view_camera[0] );
var _camTop = camera_get_view_y( view_camera[0]);
var _camBottom = _camTop + camera_get_view_height ( view_camera[0]);

var _num_bullets = 10;
var _spread = 360;

var _spread_div = _spread/_num_bullets - 1;

if (cooldown < 1) {
	if (instance_exists(obj_player)) {
		for (var i = 0; i < _num_bullets; i++) {
			with instance_create_layer(x, y, "Bullets_Layer", obj_bullet_tank) 
			{
			   direction = point_direction(x, y, obj_player.x, obj_player.y) - _spread/2 + _spread_div * i; // Give the bullet a direction
			   speed = 8;
			}
		}
		cooldown = 100;
	}
} else if bbox_right > _camLeft && bbox_left < _camRight && bbox_bottom >_camTop && bbox_top <_camBottom {
	//only add to timer if onscreen
	cooldown = cooldown - 1;
}
