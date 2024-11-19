/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 218121F1
/// @DnDArgument : "xpos" "self.x - lengthdir_x(16, teleport_direction)"
/// @DnDArgument : "ypos" "self.y - lengthdir_y(16, teleport_direction)"
/// @DnDArgument : "objectid" "obj_player"
/// @DnDSaveInfo : "objectid" "obj_player"
instance_create_layer(self.x - lengthdir_x(16, teleport_direction), self.y - lengthdir_y(16, teleport_direction), "Instances", obj_player);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 343C9A90
instance_destroy();