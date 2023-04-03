/// @description Insert description here
// You can write your code in this editor


draw_wasd = false;
draw_obstacle = false;
draw_shoot = false;
draw_powerup = false;

alarm[0] = room_speed * 0.1; // wasd
alarm[1] = room_speed * 6;  //obstruct
alarm[2] = room_speed * 11;  // shoot
alarm[3] = room_speed * 14; // enemy spawn
alarm[4] = room_speed * 19;  // heart
alarm[5] = room_speed * 25;  // all gone