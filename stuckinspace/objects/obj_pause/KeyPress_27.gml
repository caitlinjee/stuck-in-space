//pause = !pause;


if(global.pause){
	instance_destroy(global.continue_btn)
	instance_destroy(global.help_btn)
	instance_destroy(global.obj_btn_main)
}else {
	global.continue_btn = instance_create_depth(x_mid, 450, -10000, obj_btn_continue);
	global.help_btn = instance_create_depth(x_mid, 650, -10000, obj_btn_help_pause_screen);
	global.obj_btn_main = instance_create_depth(x_mid, 850, -10000, obj_btn_back_to_main);
}
global.pause = !global.pause;
