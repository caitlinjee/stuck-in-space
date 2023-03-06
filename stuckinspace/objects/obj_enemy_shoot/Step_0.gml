/// @description Insert description here
// You can write your code in this editor


//move in random directions


// shoot at player
if (cooldown < 1) {
	with instance_create_layer(x, y, "Bullets_Layer", obj_bullet_enemy) 
	{
	   direction = point_direction(x, y, obj_player.x, obj_player.y); // Give the bullet a direction
	   speed = 10;
	}
	cooldown = cooldown - 1;
}
cooldown = 40;

//image_angle = direction;

// if die then die
if ((current_hp) <= 0) {
	with(obj_score) {
		thescore = thescore + 5;
	}
	//audio_sound_pitch(snd_death, random_range(0.8, 1.2));
	//audio_play_sound(snd_death, 1, false);
	instance_destroy();
}