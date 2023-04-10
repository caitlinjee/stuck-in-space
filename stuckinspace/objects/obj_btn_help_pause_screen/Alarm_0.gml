/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
global.help_screen = true
instance_deactivate_object(global.continue_btn)
instance_deactivate_object(global.help_btn)
instance_deactivate_object(global.obj_btn_main)
global.help_obj = instance_create_depth(200, 200, -10000, obj_how_to_play);
global.back_btn = instance_create_depth(70, 150, -10000, obj_btn_help_pause_screen_back);



