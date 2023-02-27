/// @description Insert description here
// You can write your code in this editor

// get local vars for the camera view
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

// draws the score + sets draw options
draw_set_font(font_score);
draw_set_colour(c_white);
draw_text(cx + (cw / 2), cy + 25, string(thescore));