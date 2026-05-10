/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 573603F6
/// @DnDArgument : "var" "global.has_discovered_player"
/// @DnDArgument : "value" "false"
if(global.has_discovered_player == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05B2E151
	/// @DnDParent : 573603F6
	/// @DnDArgument : "expr" "choose(0, 90, 180, 270)"
	/// @DnDArgument : "var" "dog_patrol_direction"
	dog_patrol_direction = choose(0, 90, 180, 270);
}