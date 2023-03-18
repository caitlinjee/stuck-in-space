/// @description Insert description here
// You can write your code in this editor


//spawn an enemy 
timer++;


//reset timer when enemy limits have been reached
if instance_number (obj_enemy) >= global.activeEnemyMax || global.totalEnemies >= global.enemyRoomMax || 
	count >= global.maxShooters{
		timer = 0;
}

if timer >= spawn_rate && !place_meeting(x, y, obj_enemy_shoot) {
	
	//create an enemy
	var _inst = instance_create_layer(x, y, "Enemy_Layer", obj_enemy_shoot);
	
	count++;
	
	with(_inst) {
		image_alpha = 0;
		state = -1;	
	}
	
	//reset the timer
	timer = 0;
}