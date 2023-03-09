/// @description Insert description here
// You can write your code in this editor

//move
xspd = lengthdir_x( spd, dir );
yspd = lengthdir_y( spd, dir );
x += xspd;
y += yspd;

depth = -y - 50;

//cleanup
#region

if hitConfirm == true && enemy_destroy == true{
	destroy = true;
}

//destroy (put on top cause race condition w enemy)
if destroy == true {
	// bullet destroy animation
	instance_destroy();
}

//collision
if place_meeting( x, y, obj_solid_wall) {
	destroy = true;
}

//bullet out of range
/*if point_distance( xstart, ystart, x, y ) > maxDist {
	destroy = true;
}*/

//out of room bounds (put on top)
var _pad = 16;
if bbox_right < - _pad || bbox_left > room_width + _pad || bbox_bottom < - _pad 
	|| bbox_top> room_height + _pad {
	destroy = true;
}
#endregion