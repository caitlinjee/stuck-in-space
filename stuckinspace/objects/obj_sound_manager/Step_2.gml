/// @description Insert description here
// You can write your code in this editor

var _sfxVol = global.SFX_VOL * global.MASTER_VOL;

// bgm
if bgm {
	var _snd = audio_play_sound(snd_bgm, 5, true);
	audio_sound_gain( _snd, 1, 0);
	
	bgm = false;
}

// change to boss bgm
if bgm_boss {
	
	if audio_is_playing(snd_bgm) {
		audio_stop_sound(snd_bgm);
	}
		
	var _snd = audio_play_sound(snd_bgm_boss, 5, true);
	audio_sound_gain( _snd, 1, 0);
	
	bgm_boss = false;
}

//astro shoot sound
if astroShoot == true
{
	//play sound
	var _snd = audio_play_sound(snd_astro_shoot, 12, false);
	audio_sound_gain( _snd, 0.7, 0);
	
	//reset variable
	astroShoot = false;
}

// alien shoot sound
if alienShoot == true {
		//play sound
	var _snd = audio_play_sound(snd_astro_shoot, 17, false, 0, 0, 3);
	audio_sound_gain( _snd, 0.6, 0);
	
	//reset variable
	alienShoot = false;
}

// alien die sound
if alienDie == true {
			//play sound
	var _snd = audio_play_sound(snd_alien_die, 15, false);
	audio_sound_gain( _snd, 0.7, 0);
	
	//reset variable
	alienDie = false;
}

// astro get hit
if astroHit == true {
				//play sound
	var _snd = audio_play_sound(snd_astro_hit, 8, false);
	audio_sound_gain( _snd, 0.9, 0);
	
	//reset variable
	astroHit = false;
}

// gun collected
if gunCollected == true {
				//play sound
	var _snd = audio_play_sound(snd_collected, 10, false, 0, 0, -1);
	audio_sound_gain( _snd, 0.9, 0);
	
	//reset variable
	gunCollected = false;
}

// gun collected
if heartCollected == true {
				//play sound
	var _snd = audio_play_sound(snd_collected, 10, false, 0, 0.2);
	audio_sound_gain( _snd, 0.9, 0);
	
	//reset variable
	heartCollected = false;
}

// next room
if nextRoom == true {
				//play sound
	var _snd = audio_play_sound(snd_next_room, 10, false);
	audio_sound_gain( _snd, 0.9, 0);
	
	//reset variable
	nextRoom = false;
}

// game ended 
if shipCollected == true {
				//play sound
	var _snd = audio_play_sound(snd_congrats, 5, false);
	audio_sound_gain( _snd, 1, 0);
	
	//reset variable
	shipCollected = false;
}