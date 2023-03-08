/// @description Insert description here
// You can write your code in this editor

// set direction of bullet
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-2, 2); // give bullets spread
speed = 13;
image_angle = direction;


dir = direction; //0;
spd = 5;
xspd = 0;
yspd = 0;

damage = global.weapon_list.original_weapon.damage;

// cleanup
maxDist = 1000;
destroy = false;
