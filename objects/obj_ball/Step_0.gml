if (keyboard_check_pressed(vk_space)) {
	move_towards_point(random(1000), random(100), 8);
	fired = true;
	check = false;
}

if (place_meeting(x, y, obj_wall)) {
	move_bounce_solid(true);
	if (x > room_width / 2) {
		x--;
	}
	else {
		x++;
	}
	y++;
}


if (place_meeting(x, y, obj_bar)) {
	move_bounce_solid(true);
	direction += random_range(-10, 10);
	direction = clamp(direction, 45, 135);
}

if (place_meeting(x, y, obj_brick)) {
	move_bounce_solid(true);
	score++;
}

if (place_meeting(x, y, obj_check)) {
	instance_destroy();
	instance_create_depth(-100, 608, depth, obj_ball);
	check = true;
}

spin_angle++;