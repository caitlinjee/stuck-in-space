/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// collected
if place_meeting(x, y, obj_player) {
	
	// go to congrats
		room_goto(rm_congrats);
		if audio_is_playing(snd_bgm_boss) {
			audio_stop_sound(snd_bgm_boss);
		}
	
		if audio_is_playing(snd_bgm) {
			audio_stop_sound(snd_bgm);
		}
	
		audio_play_sound(snd_congrats, 5, false); //todo
	
		instance_destroy(obj_player);
		instance_destroy(obj_hud);
		instance_destroy(obj_sound_manager);
	
	//destroy self 
	instance_destroy();
}