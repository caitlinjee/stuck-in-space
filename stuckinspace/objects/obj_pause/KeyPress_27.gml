//pause = !pause;

if(room == rm_menu || room == rm_credits || room == rm_game_over || room == rm_congrats
|| room == rm_help || room == rm_win_anim) exit

	
	var _camX = camera_get_view_x( view_camera [0] );
	var _camW = camera_get_view_width( view_camera[0] );
	var _camY = camera_get_view_y( view_camera [0] );
	var _camH = camera_get_view_height ( view_camera[0]);

 if(global.pause && global.help_screen){
		instance_destroy(global.back_btn)
		instance_destroy(global.help_obj)
		instance_activate_object(global.continue_btn)
		instance_activate_object(global.help_btn)
		instance_activate_object(global.obj_btn_main)
		global.help_screen = false
}else if(global.pause){
	instance_destroy(global.continue_btn)
	instance_destroy(global.help_btn)
	instance_destroy(global.obj_btn_main)
	global.pause = !global.pause;
}
else{
	draw_set_alpha(1);
	global.continue_btn = instance_create_depth( _camX + _camW/2 - 150,  _camY + _camH/2 - 150, -20000, obj_btn_continue);
	global.help_btn = instance_create_depth( _camX + _camW/2 - 150,  _camY + _camH/2  + 25, -20000, obj_btn_help_pause_screen);
	global.obj_btn_main = instance_create_depth( _camX + _camW/2 - 150,  _camY + _camH/2 + 200, -20000, obj_btn_back_to_main);
	
global.pause = !global.pause;

}