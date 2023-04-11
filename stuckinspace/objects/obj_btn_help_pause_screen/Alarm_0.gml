/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


	var _camX = camera_get_view_x( view_camera [0] );
	var _camW = camera_get_view_width( view_camera[0] );
	var _camY = camera_get_view_y( view_camera [0] );
	var _camH = camera_get_view_height ( view_camera[0]);
	

global.help_screen = true
instance_deactivate_object(global.continue_btn)
instance_deactivate_object(global.help_btn)
instance_deactivate_object(global.obj_btn_main)
global.help_obj = instance_create_depth(_camX + 240, _camY + 100, -20000, obj_how_to_play);
global.back_btn = instance_create_depth(_camX+ 70, _camY+ 70, -20000, obj_btn_help_pause_screen_back);



