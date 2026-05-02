/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BE432ED
/// @DnDArgument : "var" "var_can_take_damage"
/// @DnDArgument : "value" "true"
if(var_can_take_damage == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4010401A
	/// @DnDParent : 3BE432ED
	/// @DnDArgument : "expr" "-25"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.health"
	global.health += -25;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58DEB700
	/// @DnDParent : 3BE432ED
	/// @DnDArgument : "var" "global.health"
	/// @DnDArgument : "op" "1"
	if(global.health < 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1527BC7F
		/// @DnDParent : 58DEB700
		/// @DnDArgument : "var" "global.health"
		global.health = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B99820A
	/// @DnDParent : 3BE432ED
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "var_can_take_damage"
	var_can_take_damage = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 67F71DA1
	/// @DnDParent : 3BE432ED
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);
}