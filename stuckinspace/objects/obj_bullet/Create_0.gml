/// @description Insert description here
// You can write your code in this editor

// set direction of bullet
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-5, 5); // give bullets spread
speed = 13;
image_angle = direction;