/// @description Insert description here
// You can write your code in this editor

if (num_enemies > 0) {
	var _inst = instance_create_layer(x, y, "Enemy_Layer", obj_enemyspawn_chase);
	
	/*with (_inst) {
		collisions = false;
		getDamage = false;
		spd = 2.5;
		dir = 270;
	}*/
	
	alarm[0] = spawnrate;
	num_enemies = num_enemies - 1;
}
