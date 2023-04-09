/// @description Insert description here
// You can write your code in this editor

var _sfxVol = global.SFX_VOL * global.MASTER_VOL;


//astro shoot sound
if astroShoot == true
{
	//play sound
	var _snd = audio_play_sound(snd_astro_shoot, 10, false);
	audio_sound_gain( _snd, 0.8, 0);
	
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
	var _snd = audio_play_sound(snd_astro_hit, 10, false);
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