/// @description Insert description here
// You can write your code in this editor

max_hp = 5;
current_hp = max_hp;
spd = 2.5;
dir = 0;
xspd = 0;
yspd = 0;

// state machine
//state = 0;

//spawn
fadeSpd = 1/15;
emergeSpd = 2.5;



global.totalEnemies++;



/*collisions = false;
getDamage = false;*/

// create dmg list
damage_list = ds_list_create();
