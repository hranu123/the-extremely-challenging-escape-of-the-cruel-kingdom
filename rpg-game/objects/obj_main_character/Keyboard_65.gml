/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76AF4432
/// @DnDArgument : "var" "can_move"
/// @DnDArgument : "value" "true"
if(can_move == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7ACE1E93
	/// @DnDParent : 76AF4432
	/// @DnDArgument : "expr" "-var_main_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -var_main_speed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 529B59DF
	/// @DnDParent : 76AF4432
	/// @DnDArgument : "speed" "var_main_animation_speed"
	image_speed = var_main_animation_speed;
}