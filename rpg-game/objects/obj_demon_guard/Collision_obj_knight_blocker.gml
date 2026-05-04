/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 511948A4
/// @DnDArgument : "var" "has_discovered_player"
/// @DnDArgument : "value" "false"
if(has_discovered_player == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26ED197B
	/// @DnDParent : 511948A4
	/// @DnDArgument : "expr" "choose(0, 90, 180, 270)"
	/// @DnDArgument : "var" "guard_patrol_direction"
	guard_patrol_direction = choose(0, 90, 180, 270);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 441D98F2
	/// @DnDParent : 511948A4
	/// @DnDArgument : "var" "has_discovered_player"
	/// @DnDArgument : "value" "true"
	if(has_discovered_player == true)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 77D777FD
		/// @DnDParent : 441D98F2
		exit;
	}
}