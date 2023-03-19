/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);

if instance_exists(obj_player) {
	if draw_wasd {
		draw_text_ext(obj_player.x, obj_player.y - 100, "Use WASD to move", 100, 500);
	}

	if draw_shoot {
		draw_text_ext(obj_player.x, obj_player.y - 150, "Click and hold left mouse button to aim and shoot", 50, 400);
	}
	
	if draw_obstacle {
		draw_text_ext(obj_player.x, obj_player.y - 150, "Objects such as walls or craters will obstruct you", 50, 400);
	}

	if draw_powerup {
		draw_text_ext(obj_player.x, obj_player.y - 150, "Pick up hearts to gain back lost health", 50, 400);
	}
}

draw_set_halign(fa_left);