/// @description Insert description here
// You can write your code in this editor

if (num_enemies > 0) {
	instance_create_layer(1378, 388, "Enemy_Layer", obj_enemyspawn_chase);
	alarm[0] = spawnrate;
	num_enemies = num_enemies - 1;
}
