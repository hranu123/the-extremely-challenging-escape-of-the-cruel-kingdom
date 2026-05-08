/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3387C2CD
/// @DnDArgument : "var" "var_can_take_damage"
/// @DnDArgument : "value" "true"
if(var_can_take_damage == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BC8EFA5
	/// @DnDParent : 3387C2CD
	/// @DnDArgument : "expr" "-25"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.health"
	global.health += -25;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C0BDD0D
/// @DnDArgument : "var" "global.health"
/// @DnDArgument : "op" "3"
if(global.health <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F580711
	/// @DnDParent : 1C0BDD0D
	/// @DnDArgument : "expr" ""spike""
	/// @DnDArgument : "var" "global.death_cause"
	global.death_cause = "spike";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47EF25C3
	/// @DnDParent : 1C0BDD0D
	/// @DnDArgument : "var" "global.health"
	global.health = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46988F3F
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "var_can_take_damage"
var_can_take_damage = false;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0DA671E0
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);