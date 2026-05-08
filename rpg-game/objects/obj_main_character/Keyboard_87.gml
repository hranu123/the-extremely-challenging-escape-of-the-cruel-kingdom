/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 495481F9
/// @DnDArgument : "var" "can_move"
/// @DnDArgument : "value" "true"
if(can_move == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 527E3579
	/// @DnDParent : 495481F9
	/// @DnDArgument : "expr" "-var_main_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += -var_main_speed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 52F63B14
	/// @DnDParent : 495481F9
	/// @DnDArgument : "speed" "var_main_animation_speed"
	image_speed = var_main_animation_speed;
}