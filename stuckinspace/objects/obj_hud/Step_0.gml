/// @description Insert description here
// You can write your code in this editor
if(global.pause) exit;
//get the player's hp info 
if instance_exists(obj_player) {
	playerHp = obj_player.current_hp; 
	playerMaxHp = obj_player.max_hp;
} else {
	playerHp = 0;
}

if global.enemyRoomMax - global.enemyKillCount == 0 {

	if room != rm_boss {
		//create thenext room object
		instance_create_depth (0, 0, -10000, obj_next_arrow);
	}
	
	else if room == rm_boss {
		//create congrat
		//instance_create_depth (0, 0, -10000, obj_congrats);
		/*room_goto(rm_congrats);
		if audio_is_playing(snd_bgm_boss) {
			audio_stop_sound(snd_bgm_boss);
		}
	
		if audio_is_playing(snd_bgm) {
			audio_stop_sound(snd_bgm);
		}
	
		instance_destroy(obj_player);
		instance_destroy(obj_hud);
		instance_destroy(obj_sound_manager);*/
		
		instance_create_depth (0, 0, -10000, obj_final_ship_collect);
		
	}

}

//increase max enemies
if enemy_increase && (room == lvl3 || room == lvl5 ) {
	global.activeEnemyMax++;
	enemy_increase = false;	
}