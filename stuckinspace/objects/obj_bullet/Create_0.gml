/// @description Insert description here
// You can write your code in this editor

event_inherited();

// set direction of bullet
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-2, 2); // give bullets spread
oriDir = direction;
speed = 15;
oriSpd = speed;
image_angle = direction;


dir = direction; //0;
spd = 4;
xspd = 0;
yspd = 0;

damage = global.weapon_list.original_weapon.damage;

// cleanup
maxDist = 750;
destroy = false;
enemy_destroy = true;