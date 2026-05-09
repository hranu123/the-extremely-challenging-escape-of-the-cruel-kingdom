/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EB510DA
/// @DnDArgument : "var" "player_can_move"
/// @DnDArgument : "value" "true"
if(player_can_move == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2144F0A3
	/// @DnDParent : 0EB510DA
	/// @DnDArgument : "expr" "var_sprint_animation"
	/// @DnDArgument : "var" "var_main_animation_speed"
	var_main_animation_speed = var_sprint_animation;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27EF4372
	/// @DnDParent : 0EB510DA
	/// @DnDArgument : "expr" "var_main_sprint"
	/// @DnDArgument : "var" "var_main_speed"
	var_main_speed = var_main_sprint;
}