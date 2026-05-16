/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44EC24EC
/// @DnDArgument : "var" "player_can_move"
/// @DnDArgument : "value" "true"
if(player_can_move == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3918886D
	/// @DnDParent : 44EC24EC
	/// @DnDArgument : "expr" "var_main_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += var_main_speed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5C50A5D0
	/// @DnDParent : 44EC24EC
	/// @DnDArgument : "speed" "var_main_animation_speed"
	image_speed = var_main_animation_speed;
}