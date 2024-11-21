/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 57044406
/// @DnDArgument : "spriteind" "banner_dust_FX_1"
/// @DnDSaveInfo : "spriteind" "banner_dust_FX_1"
sprite_index = banner_dust_FX_1;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 38F01ED2
/// @DnDApplyTo : {obj_player}
with(obj_player) instance_destroy();

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1C840226
speed = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3DF37EC5
/// @DnDArgument : "xpos" "self.x"
/// @DnDArgument : "ypos" "self.y"
/// @DnDArgument : "objectid" "obj_player"
/// @DnDSaveInfo : "objectid" "obj_player"
instance_create_layer(self.x, self.y, "Instances", obj_player);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0F411E8D
instance_destroy();