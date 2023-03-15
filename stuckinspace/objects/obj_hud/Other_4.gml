/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_next_arrow) {
	instance_destroy(obj_next_arrow);	
}

if room == lvl1 {
	global.maxChasers = 9; //8; //13
	global.maxShooters = 6; //7; // 10
	global.maxTanks = 0; //5; // 7
} else if room == lvl2 { 
	global.maxChasers = 8; //8; //13
	global.maxShooters = 7; //7; // 10
	global.maxTanks = 5; //5; // 7	
} else if room == lvl3 {
	global.maxChasers = 13; //8; //13
	global.maxShooters = 10; //7; // 10
	global.maxTanks = 7; //5; // 7	
} else if room == rm_boss {
	global.activeEnemyMax = 3;
	global.maxChasers = 5; //8; //13
	global.maxShooters = 5; //7; // 10
	global.maxTanks = 5; //5; // 7	
}

global.enemyRoomMax = global.maxChasers + global.maxShooters + global.maxTanks; //total