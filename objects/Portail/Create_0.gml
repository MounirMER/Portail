teleport_direction = point_direction(obj_player.x, obj_player.y, device_mouse_x(0), device_mouse_y(0));

image_angle = teleport_direction;

motion_add(teleport_direction, 8);