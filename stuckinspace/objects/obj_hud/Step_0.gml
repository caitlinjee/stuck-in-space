/// @description Insert description here
// You can write your code in this editor

//get the player's hp info 
if instance_exists(obj_player) {
	playerHp = obj_player.current_hp; 
	playerMaxHp = obj_player.max_hp;
} else {
	playerHp = 0;
}


if global.enemyRoomMax - global.enemyKillCount == 0 {

	//create thenext room object
	instance_create_depth (0, 0, -10000, obj_next_arrow);

}