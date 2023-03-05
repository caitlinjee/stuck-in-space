/// @description Insert description here
// You can write your code in this editor

// move when arrow keys are pressed down
if (keyboard_check(ord("D"))) {
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
}

// points sprite image angle towards the mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);

//shooting when click
if (mouse_check_button(mb_left) && (cooldown < 1)) {
	instance_create_layer(x, y, "Bullets_Layer", obj_bullet);
	cooldown = 25;
}

cooldown = cooldown - 1;

// player cant move past screen border
x = clamp(x, 0, 2048);
y = clamp(y, 0, 1536);

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