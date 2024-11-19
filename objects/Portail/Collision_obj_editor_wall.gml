/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 313DFF22
/// @DnDArgument : "expr" "point_direction(obj_player.x, obj_player.y, self.x, self.y)"
/// @DnDArgument : "var" "teleport_direction"
teleport_direction = point_direction(obj_player.x, obj_player.y, self.x, self.y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6214490C
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "alarm[0]"
alarm[0] = 4;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 38F01ED2
/// @DnDApplyTo : {obj_player}
with(obj_player) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 57044406
/// @DnDArgument : "spriteind" "banner_dust_FX_1"
/// @DnDSaveInfo : "spriteind" "banner_dust_FX_1"
sprite_index = banner_dust_FX_1;
image_index = 0;