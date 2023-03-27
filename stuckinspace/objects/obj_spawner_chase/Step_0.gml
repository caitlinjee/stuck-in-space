/// @description Insert description here
// You can write your code in this editor

//spawn an enemy 
timer++;


//reset timer when enemy limits have been reached
if instance_number (obj_enemy) >= global.activeEnemyMax || global.totalEnemies >= global.enemyRoomMax ||
	global.chasecount >= global.maxChasers {
		timer = 0;
}

if timer >= spawn_rate && !place_meeting(x, y, obj_enemy_chase) {
	
	//create an enemy
	var _inst = instance_create_layer(x, y, "Enemy_Layer", obj_enemy_chase);
	
	with(_inst) {
		image_alpha = 0;
		state = -1;	
	}
	
	global.chasecount++;
	
	//reset the timer
	timer = 0;
}