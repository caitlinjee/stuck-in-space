//pause = !pause;

	var _camX = camera_get_view_x( view_camera [0] );
	var _camW = camera_get_view_width( view_camera[0] );
	var _camY = camera_get_view_y( view_camera [0] );
	var _camH = camera_get_view_height ( view_camera[0]);

if(global.pause){
	instance_destroy(global.continue_btn)
	instance_destroy(global.help_btn)
	instance_destroy(global.obj_btn_main)
}else {
	global.continue_btn = instance_create_depth( _camX + _camW/2 - 150,  _camY + _camH/2 - 100, -10000, obj_btn_continue);
	global.help_btn = instance_create_depth( _camX + _camW/2 - 150,  _camY + _camH/2  + 100, -10000, obj_btn_help_pause_screen);
	global.obj_btn_main = instance_create_depth( _camX + _camW/2 - 150,  _camY + _camH/2 + 300, -10000, obj_btn_back_to_main);
}
global.pause = !global.pause;
