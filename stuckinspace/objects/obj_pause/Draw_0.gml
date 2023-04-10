/*if(pause){
	if(!surface_exists(pause_surf)){
		pause_surf = surface_create(browser_width, browser_height);
		instance_deactivate_all(true);
		surface_set_target(pause_surf);
		draw_surface(application_surface, 0,0);
		surface_reset_target();
	}else {
		draw_surface(pause_surf, 0, 0);
	}
}else {
	instance_activate_all();
	surface_free(pause_surf);
	pause_surf = -1;
}*/
if(global.pause){
	
	var _camX = camera_get_view_x( view_camera [0] );
	var _camW = camera_get_view_width( view_camera[0] );
	var _camY = camera_get_view_y( view_camera [0] );
	var _camH = camera_get_view_height ( view_camera[0]);
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width, room_height,0);
	
	draw_rectangle_color( _camX, _camY, _camX + _camW, _camY + _camH, c_black, c_black, c_black, c_black, false);
	
	draw_set_font(font_header);
	draw_set_color(c_white);
	draw_set_alpha(1);
	if(!global.help_screen){
	//draw_text(x_mid - 170, 200, "Game Paused");
		draw_set_halign (fa_center);
		draw_set_valign(fa_middle);
		draw_text_transformed ( _camX + _camW/2, _camY + _camH/2 - 300, "Game Paused", 1, 1, 0 );
	}
	draw_set_halign (fa_left);
	draw_set_valign(fa_top);
	draw_set_font(font_score);
} else {
	
}