/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 7498BB94
/// @DnDComment : Add move_speed to$(13_10)Y so it moves down
/// @DnDArgument : "value" "move_speed"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "instvar" "1"
y += move_speed;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6E40BDD7
/// @DnDComment : Walk down sprite
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "run_1"
/// @DnDSaveInfo : "spriteind" "run_1"
sprite_index = run_1;
image_index += 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 118C0FC6
/// @DnDComment : Reset the horizontal scale$(13_10)to 1 so the player faces$(13_10)right again
/// @DnDArgument : "xscale" "-1"
image_xscale = -1;image_yscale = 1;