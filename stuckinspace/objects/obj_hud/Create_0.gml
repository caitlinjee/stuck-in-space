/// @description Insert description here
// You can write your code in this editor

//make sure this shows up on top 
depth = -9000;
//keep track of player's health
playerHp = 0; 
playerMaxHp = 0;

//enemy 

global.maxChasers = 4;
global.maxShooters = 3;
global.maxTanks = 2;

global.enemyRoomMax = 3;//global.maxChasers + global.maxShooters + global.maxTanks; //total
global.activeEnemyMax = 4; // at once
global.totalEnemies = 0; //spawned
global.enemyKillCount = 0;

//score
global.thescore = 0;