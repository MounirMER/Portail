direction = point_direction(x, y, device_mouse_x(0), device_mouse_y(0));

image_angle = direction;

motion_add(direction, 16);
