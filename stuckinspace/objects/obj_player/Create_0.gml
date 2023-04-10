/// @description Insert description here
// You can write your code in this editor

//sprite control
centerYOffset = 10; //modify this 60?
centerY = y + centerYOffset; //set in step 
weaponOffsetDist = 6;
aimDir = 0;
weaponLength = sprite_get_bbox_right(spr_gun) - sprite_get_xoffset(spr_gun);

face = 0;
sprite[0] = spr_player;
sprite[1] = spr_player_2;
//sprite_index = sprite[face];


cooldown = 0;
firerate = 33;

max_hp = 1;
current_hp = max_hp;

moveDir = 0;
moveSpd = 10;
xspd = 0;
yspd = 0;

paused = false;
paused_surf = -1;

// create dmg list
//damage_list = ds_list_create();

get_damage_create(true);