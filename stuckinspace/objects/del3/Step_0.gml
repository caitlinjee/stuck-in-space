/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if global.enemyKillCount == global.maxChasers + global.maxShooters + global.maxTanks {
	//grow the enemies
	instance_create_layer(x, y, "Enemy_Layer", del5);
	instance_destroy();
}
