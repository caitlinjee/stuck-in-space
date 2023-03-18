/// @description Insert description here
// You can write your code in this editor


//get cam coordinates
var _camX = camera_get_view_x( view_camera [0] );
var _camY = camera_get_view_y( view_camera[0]);
var _camW = camera_get_view_width(view_camera[0]);

//draw the player's hp
/*var _hpString = "HP: " + string (playerHp) + "/" + string (playerMaxHp);
draw_text(_camX, _camY, _hpString );*/

if instance_exists(obj_player) {
	draw_healthbar(_camX + 50, _camY + 50, _camX + 500, _camY + 100, 100* playerHp / playerMaxHp, 
		c_black, c_red, c_green, 0, true, true);
	draw_text(_camX + 70, _camY + 55, "HP: " + string (playerHp) + "/" + string(playerMaxHp) );
}

// enemies remaining
var _enemyCountStr = "Kill Count: " + string(global.enemyKillCount) + "/" + string(global.enemyRoomMax); 
_enemyCountStr = "Aliens remaining: " + string(global.enemyRoomMax - global.enemyKillCount);
draw_text(_camX+850, _camY+50, _enemyCountStr);



// draws the score + sets draw options
draw_set_font(font_score);
//draw_set_colour(c_white);
//draw_text(_camX + (_camW / 2), _camY + 25, string(thescore));

draw_text(_camX+1650, _camY+50, "Score: " + string(global.thescore));