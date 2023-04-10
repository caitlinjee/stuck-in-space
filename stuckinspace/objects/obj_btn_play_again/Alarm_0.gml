/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
game_restart();
	if audio_is_playing(snd_bgm_boss) {
		audio_stop_sound(snd_bgm_boss);
	}
	
	instance_destroy(obj_player);
	instance_destroy(obj_hud);
	instance_destroy(obj_sound_manager);
room_goto(rm_init);