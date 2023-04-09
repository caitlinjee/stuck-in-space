/// @description Insert description here
// You can write your code in this editor


var _wallcollisions = true;
var _getdamage = true;

//state machine
switch (state) {
	case -1:
		// spawn state
		
		if image_alpha < 1 {
			spd = 0;
			image_alpha += fadeSpd;
		}
		
		//walk out of spawn
		_wallcollisions = false;
		_getdamage = false;
		
		if image_alpha >= 1 {
			spd = emergeSpd;
			dir = 270;
		}
		
		if !place_meeting(x, y, obj_wall) {
			state = 0;
		}
		
		break;
		
	case 0 :
		// normal behavior
		if (instance_exists(obj_player)) {
			dir = point_direction( x, y, obj_player.x, obj_player.y );
		}
	
		break;
}

// move towards player
#region

//getting the speeds
xspd = lengthdir_x( spd, dir );
yspd = lengthdir_y( spd, dir ); 

//collision
#region
//wall
if (_wallcollisions == true) {
	if place_meeting( x + xspd, y, obj_wall) {
		xspd = 0;
	}

	if place_meeting( x, y + yspd, obj_wall) {
		yspd = 0;
	}
}

//enemy
if place_meeting( x + xspd, y, obj_enemy) {
	xspd = 0;
}

if place_meeting( x, y + yspd, obj_enemy) {
	yspd = 0;
}

#endregion

//moving
x += xspd;
y += yspd;

// depth
depth = -y;

#endregion

//image_angle = direction;

//receive damage
if (_getdamage == true) {
	get_damage(obj_damage_enemy);
}

// if die then die
#region
if ((current_hp) <= 0) {
	global.thescore = global.thescore + 5;
	
	//audio_sound_pitch(snd_death, random_range(0.8, 1.2));
	//audio_play_sound(snd_death, 1, false);
	
	instance_create_depth(x, y, -9999, obj_explode);
	
	//determine if we should drop an item
	var _chance = irandom(100);
	if _chance < 30 && global.enemyRoomMax - (global.enemyKillCount+1) != 0 {
		instance_create_depth (x, y, depth, obj_health);
	}
	
	
	global.enemyKillCount++;
	
	// 20% chance drop health
	//var _health_chance = irand(0,100);
	//if _health_chance <= 20 ? instance_create_depth (x, y, depth, obj_health);
	
	if global.enemyRoomMax - global.enemyKillCount == 0 {
		instance_create_depth (x, y, depth, obj_damage);
	}
	
	obj_sound_manager.alienDie = true;
	
	instance_destroy();
}
#endregion

//old code
#region
/*if (instance_exists(obj_player)) {
	move_towards_point(obj_player.x, obj_player.y, spd);	
}*/
#endregion