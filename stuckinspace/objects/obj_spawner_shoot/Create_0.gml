/// @description Insert description here
// You can write your code in this editor

/*spawnrate = irandom_range(250, 350); // enemy spawn speed
num_enemies = 5;
alarm[0] = spawnrate;*/

event_inherited();

// spawn
count = 0;
timer = 0;
spawn_rate = irandom_range(250, 350);