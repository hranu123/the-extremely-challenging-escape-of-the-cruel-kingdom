/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4116A76E
/// @DnDArgument : "var" "can_move"
/// @DnDArgument : "value" "true"
if(can_move == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3918886D
	/// @DnDParent : 4116A76E
	/// @DnDArgument : "expr" "var_main_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += var_main_speed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5C50A5D0
	/// @DnDParent : 4116A76E
	/// @DnDArgument : "speed" "var_main_animation_speed"
	image_speed = var_main_animation_speed;
}