/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

instance_destroy(obj_player);
instance_destroy(obj_hud);	
instance_destroy(obj_sound_manager);
room_goto(rm_menu);
global.pause = false;
global.thescore = 0;

room_goto(rm_menu);