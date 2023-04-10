/// @description Insert description here
// You can write your code in this editor

	if instance_exists(obj_player) {
		instance_destroy(obj_player);
	}

	if instance_exists(obj_hud) {
		instance_destroy(obj_hud);
	}

	if instance_exists(obj_sound_manager) {
		instance_destroy(obj_sound_manager);
	}
	
		if audio_is_playing(snd_bgm_boss) {
		audio_stop_sound(snd_bgm_boss);
	}
	
	if audio_is_playing(snd_bgm) {
		audio_stop_sound(snd_bgm);
	}