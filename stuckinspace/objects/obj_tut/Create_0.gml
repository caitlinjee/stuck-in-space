/// @description Insert description here
// You can write your code in this editor


draw_wasd = false;
draw_shoot = false;
draw_powerup = false;

alarm[0] = room_speed * 0.1; // wasd
alarm[1] = room_speed * 6; // shoot
alarm[2] = room_speed * 12; // enemy spawn
alarm[3] = room_speed * 14; // heart
alarm[4] = room_speed * 21; // all gone