/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// new move

/*dir = 90;
var _pad = 40;
if bbox_top >= room_height - _pad {
	dir = 270;
} else {
	dir = 90;
}

//getting the speeds
xspd = lengthdir_x( spd, dir );
yspd = lengthdir_y( spd, dir ); 

//moving
x += xspd;
y += yspd;*/


// shoot at player if in view

//transition to shooting state
var _camLeft = camera_get_view_x( view_camera[0] );
var _camRight = _camLeft + camera_get_view_width( view_camera[0] );
var _camTop = camera_get_view_y( view_camera[0]);
var _camBottom = _camTop + camera_get_view_height ( view_camera[0]);


if (cooldown < 1) {
	if (instance_exists(obj_player)) {
		with instance_create_layer(x, y, "Bullets_Layer", obj_bullet_enemy) 
		{
		   direction = point_direction(x, y, obj_player.x, obj_player.y); // Give the bullet a direction
		   speed = 8;
		}
		cooldown = 80;
	}
} else if bbox_right > _camLeft && bbox_left < _camRight && bbox_bottom >_camTop && bbox_top <_camBottom {
	//only add to timer if onscreen
	cooldown = cooldown - 1;
}
