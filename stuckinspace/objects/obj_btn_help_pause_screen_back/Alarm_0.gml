/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
instance_activate_object(global.continue_btn)
instance_activate_object(global.help_btn)
instance_activate_object(global.obj_btn_main)
instance_destroy(global.help_obj)

global.help_screen = false
instance_destroy(global.back_btn)