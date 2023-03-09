/// @description Insert description here
// You can write your code in this editor

var _camX = camera_get_view_x( view_camera [0] );
var _camW = camera_get_view_width( view_camera[0] );
var _camY = camera_get_view_y( view_camera [0] );
var _camH = camera_get_view_height ( view_camera[0]);


//draw the text
//"game over" 
draw_set_halign (fa_center);
draw_set_valign(fa_middle);
draw_set_alpha( alpha );



//"game over"
var _gameoverOffset = -32;
draw_text_transformed ( _camX + _camW/2, _camY + _camH/4 + _gameoverOffset, "All aliens defeated! Go to the next room ->", 1, 1, 0 );

/*if blinkTimer > 0 {
	blinkTimer--;
		
	if blinkTimer mod 5 == 0 {
		if alpha == 1 {
			alpha = 0;
			draw_set_alpha( alpha );
			draw_text_transformed ( _camX + _camW/2, _camY + _camH/2 + _gameoverOffset, "All aliens defeated! Go to the next room ->", 1, 1, 0 );
		} else {
			alpha = 1;
			draw_set_alpha( alpha );
			draw_text_transformed ( _camX + _camW/2, _camY + _camH/4 + _gameoverOffset, "All aliens defeated! Go to the next room ->", 1, 1, 0 );
		}
	}
}*/


draw_set_halign (fa_left);
draw_set_valign(fa_top);
draw_set_alpha( 1 );