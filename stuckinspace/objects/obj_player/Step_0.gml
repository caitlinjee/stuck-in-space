/// @description Insert description here
// You can write your code in this editor


// player movement (smoother)
#region
rightKey = keyboard_check( ord( "D" ) ); 
leftKey = keyboard_check( ord("A")); 
upkey = keyboard_check( ord("W" ) ); 
downKey = keyboard_check ( ord( "S" ) );

//player movement
//get the direction
var _horizkey = rightKey - leftKey;
var _vertkey = downKey - upkey;
moveDir = point_direction( 0, 0, _horizkey, _vertkey );

//get the x and y speeds
var _spd = 0;
var _inputLevel = point_distance( 0, 0, _horizkey, _vertkey); 
_inputLevel = clamp (_inputLevel, 0, 1);
_spd = moveSpd * _inputLevel;
xspd = lengthdir_x( _spd, moveDir );
yspd = lengthdir_y(_spd, moveDir);

//collision
if place_meeting( x + xspd, y, obj_wall) {
	xspd = 0;
}

if place_meeting( x, y + yspd, obj_wall) {
	yspd = 0;
}

//move the player
x += xspd;
y += yspd;

// player will be drawn on top
depth = -bbox_bottom;

#endregion

//shooting when click
#region
shootKey = mouse_check_button(mb_left);
if (shootKey) && (cooldown < 1) {
	instance_create_layer(x, y, "Bullets_Layer", obj_bullet);
	cooldown = 20;
}

cooldown = cooldown - 1;
#endregion

//calc damage
get_damage(obj_damage_player);

// old code
#region
// player cant move past screen border
/*x = clamp(x, 0, 2048);
y = clamp(y, 0, 1536);
*/


// move when arrow keys are pressed down
/*if (keyboard_check(ord("D"))) {
	x = x + 8;
}
if (keyboard_check(ord("A"))) {
	x = x - 8;
}
if (keyboard_check(ord("W"))) {
	y = y - 8;
}
if (keyboard_check(ord("S"))) {
	y = y + 8;
}*/

// points sprite image angle towards the mouse
// image_angle = point_direction(x, y, mouse_x, mouse_y);

// shooting with arrow keys
/*if (keyboard_check(vk_right) && (cooldown < 1)) {
	with(instance_create_layer(x,y,"Bullets_Layer", obj_bullet)) {
              direction = 0;
    }
	cooldown = 10;
}
if (keyboard_check(vk_left) && (cooldown < 1)) {
	with(instance_create_layer(x,y,"Bullets_Layer", obj_bullet)) {
              direction = 180;
    }
	cooldown = 10;
}
if (keyboard_check(vk_up) && (cooldown < 1)) {
	with(instance_create_layer(x,y,"Bullets_Layer", obj_bullet)) {
              direction = 90;
    }
	cooldown = 10;
}
if (keyboard_check(vk_down) && (cooldown < 1)) {
	with(instance_create_layer(x,y,"Bullets_Layer", obj_bullet)) {
              direction = 270;
    }
	cooldown = 10;
}*/
#endregion