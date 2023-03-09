/// @description Insert description here
// You can write your code in this editor


if global.enemyRoomMax - global.enemyKillCount == 0 && place_meeting(x, y, obj_player) {
	room_goto(target_rm); 
	obj_player.x = target_x;
	obj_player.y = target_y;

}