/// @description Insert description here
// You can write your code in this editor




//state machine
switch (state) {
	/*case -1:
		
		if image_alpha < 1 {
			spd = 0;
			image_alpha += 0.2;
		}
		
		//walk out of spawn
		_collisions = false;
		_getDamage = false;
		if image_alpha > 1 {
			spd = 2.5;
			dir = 270;
		}
		break;*/
	case 0 :
		// normal behavior
		if (instance_exists(obj_player)) {
			dir = point_direction( x, y, obj_player.x, obj_player.y );
		}
	
		break;
}

if !place_meeting(x, y, obj_wall) {
	collisions = true;
	getDamage = true;
}

// move towards player
#region

//getting the speeds
xspd = lengthdir_x( spd, dir );
yspd = lengthdir_y( spd, dir ); 

//collision
if (collisions == true) {
	if place_meeting( x + xspd, y, obj_wall) || place_meeting( x + xspd, y, obj_enemy) {
		xspd = 0;
	}

	if place_meeting( x, y + yspd, obj_wall) || place_meeting( x, y + yspd, obj_enemy) {
		yspd = 0;
	}
}

//moving
x += xspd;
y += yspd;

// depth
depth = -y;

#endregion

//image_angle = direction;

//receive damage
if (getDamage == true) {
	get_damage(obj_damage_enemy);
}

// if die then die
#region
if ((current_hp) <= 0) {
	with(obj_score) {
		thescore = thescore + 5;
	}
	//audio_sound_pitch(snd_death, random_range(0.8, 1.2));
	//audio_play_sound(snd_death, 1, false);
	instance_destroy();
}
#endregion

//old code
#region
/*if (instance_exists(obj_player)) {
	move_towards_point(obj_player.x, obj_player.y, spd);	
}*/
#endregion