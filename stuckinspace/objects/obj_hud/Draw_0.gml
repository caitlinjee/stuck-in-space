/// @description Insert description here
// You can write your code in this editor


//get cam coordinates
var _camX = camera_get_view_x( view_camera [0] );
var _camY = camera_get_view_y( view_camera[0]);

//draw the player's hp
/*var _hpString = "HP: " + string (playerHp) + "/" + string (playerMaxHp);
draw_text(_camX, _camY, _hpString );*/

if instance_exists(obj_player) {
	draw_healthbar(_camX + 50, _camY + 50, _camX + 500, _camY + 100, 100* playerHp / playerMaxHp, 
		c_black, c_red, c_green, 0, true, true);
}