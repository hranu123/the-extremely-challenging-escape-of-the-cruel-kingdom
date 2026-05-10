/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 511948A4
/// @DnDArgument : "var" "global.has_discovered_playe3"
/// @DnDArgument : "value" "false"
if(global.has_discovered_playe3 == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26ED197B
	/// @DnDParent : 511948A4
	/// @DnDArgument : "expr" "choose(0, 90, 180, 270)"
	/// @DnDArgument : "var" "guard_patrol_direction"
	guard_patrol_direction = choose(0, 90, 180, 270);
}