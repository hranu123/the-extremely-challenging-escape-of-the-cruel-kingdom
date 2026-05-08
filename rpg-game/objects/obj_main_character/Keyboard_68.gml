/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4294718D
/// @DnDArgument : "var" "can_move"
/// @DnDArgument : "value" "true"
if(can_move == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A0733AC
	/// @DnDParent : 4294718D
	/// @DnDArgument : "expr" "var_main_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += var_main_speed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2C986F4D
	/// @DnDParent : 4294718D
	/// @DnDArgument : "speed" "var_main_animation_speed"
	image_speed = var_main_animation_speed;
}