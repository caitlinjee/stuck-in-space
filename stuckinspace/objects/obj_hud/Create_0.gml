/// @description Insert description here
// You can write your code in this editor

//make sure this shows up on top 
depth = -9000;
//keep track of player's health
playerHp = 0; 
playerMaxHp = 0;

//enemy 
// initial values
global.maxChasers = 0;//9;
global.maxShooters = 0;//6;
global.maxTanks = 0;
global.boss = 0;

global.chasecount = 0;
global.shootcount = 0;
global.tankcount = 0;

global.enemyRoomMax = 0; //global.maxChasers + global.maxShooters + global.maxTanks; //total
global.activeEnemyMax = 5; // at once
global.totalEnemies = 0; //spawned
global.enemyKillCount = 0;

alarm[0] = room_speed * 20;
enemy_increase = false;

//score
global.thescore = 0;