/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1E49106F
/// @DnDArgument : "var" "teleport_direction"
teleport_direction = 0;

/// @DnDAction : YoYo Games.Movement.Add_Motion
/// @DnDVersion : 1
/// @DnDHash : 4CA14932
/// @DnDArgument : "dir" "point_direction(obj_player.x, obj_player.y, device_mouse_x(0), device_mouse_y(0))"
/// @DnDArgument : "speed" "8"
motion_add(point_direction(obj_player.x, obj_player.y, device_mouse_x(0), device_mouse_y(0)), 8);