/// @description Insert description here
// You can write your code in this editor

alarm[0] = room_speed * 20;


if instance_exists(obj_next_arrow) {
	instance_destroy(obj_next_arrow);	
}

if room == lvl0 {
	global.maxChasers = 1; //8; //13
	global.maxShooters = 0; //7; // 10
	global.maxTanks = 0; //5; // 7
} else if room == lvl1 {
	global.activeEnemyMax = 4;
	global.maxChasers = 6; //8; //13
	global.maxShooters = 0; //7; // 10
	global.maxTanks = 0; //5; // 7
} else if room == lvl2 { 
	global.activeEnemyMax = 4;
	global.maxChasers = 8; //8; //13
	global.maxShooters = 5; //7; // 10
	global.maxTanks = 0; //5; // 7	
} else if room == lvl3 {
	global.activeEnemyMax = 5;
	global.maxChasers = 8; //8; //13
	global.maxShooters = 6; //7; // 10
	global.maxTanks = 2; //5; // 7	
} else if room == lvl4 {
	global.activeEnemyMax = 5;
	global.maxChasers = 8; //8; //13
	global.maxShooters = 5; //7; // 10
	global.maxTanks = 4; //5; // 7	
} else if room == lvl5 {
	global.activeEnemyMax = 5;
	global.maxChasers = 7; //8; //13
	global.maxShooters = 8; //7; // 10
	global.maxTanks = 5; //5; // 7	
} else if room == rm_boss {
	global.activeEnemyMax = 6;
	global.maxChasers = 8; //8; //13
	global.maxShooters = 7; //7; // 10
	global.maxTanks = 5; //5; // 7	
	global.boss = 1;
}

// debug
else if room == rm_test {
	global.activeEnemyMax = 6;
	global.maxChasers = 1; //8; //13
	global.maxShooters = 1; //7; // 10
	global.maxTanks = 0; //5; // 7	
	global.boss = 1;
}

global.enemyRoomMax = global.maxChasers + global.maxShooters + global.maxTanks + global.boss; //total