/// @description Insert description here
// You can write your code in this editor

//instance_create_layer(random(room_width), random(room_height), "EnemyLayer", obj_enemyspawn);

//spawn at random of 2 spawn points
rand = random(10);
x = rand > 5 ? 0 : 1735;
y = rand > 5 ? 0 : 315;

if (num_enemies > 0) {
	instance_create_layer(x, y, "Enemy_Layer", obj_enemyspawn);
	alarm[0] = spawnrate;
	num_enemies = num_enemies - 1;
}
