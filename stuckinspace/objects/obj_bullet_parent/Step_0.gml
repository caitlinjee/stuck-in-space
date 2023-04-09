/// @description Insert description here
// You can write your code in this editor
if(global.pause) exit;
//move
xspd = lengthdir_x( spd, dir );
yspd = lengthdir_y( spd, dir );
x += xspd;
y += yspd;

//cleanup

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
if point_distance( xstart, ystart, x, y ) > maxDist {
	destroy = true;
}

