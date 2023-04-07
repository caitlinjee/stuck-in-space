/// @description Insert description here
// You can write your code in this editor


draw_self();

//draw the weapon

//get the weapon off the player's body
var _xOffset = lengthdir_x( weaponOffsetDist, aimDir ); 
var _yoffset = lengthdir_y ( weaponOffsetDist, aimDir );

//flip the weapon upright
var _weaponYsc1 = 1;
if aimDir > 90 && aimDir < 270
{
_weaponYsc1 = -1;
}
draw_sprite_ext( spr_gun, 0, x + _xOffset, centerY +_yoffset, 1, _weaponYsc1, aimDir, c_white, 1);


//draw hp as a number debug
//draw_text(x, y, string (global.activeEnemyMax) );