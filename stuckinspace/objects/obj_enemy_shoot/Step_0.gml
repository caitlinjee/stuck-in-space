/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// shoot at player
if (cooldown < 1) {
	with instance_create_layer(x, y, "Bullets_Layer", obj_bullet_enemy) 
	{
	   direction = point_direction(x, y, obj_player.x, obj_player.y); // Give the bullet a direction
	   speed = 10;
	}
	cooldown = 40;
} else {
	cooldown = cooldown - 1;
}
