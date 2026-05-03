/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5BB0DEE2
/// @DnDArgument : "expr" "global.player_sprinting == true"
if(global.player_sprinting == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 366CC609
	/// @DnDParent : 5BB0DEE2
	/// @DnDArgument : "expr" "guard_sprint_detect_range"
	/// @DnDArgument : "var" "guard_current_detect_range"
	guard_current_detect_range = guard_sprint_detect_range;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 583C0269
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 534D4EC3
	/// @DnDParent : 583C0269
	/// @DnDArgument : "expr" "guard_walk_detect_range"
	/// @DnDArgument : "var" "guard_current_detect_range"
	guard_current_detect_range = guard_walk_detect_range;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3BA15133
	/// @DnDParent : 583C0269
	/// @DnDArgument : "expr" "distance_to_object(obj_main_character) <= guard_current_detect_range"
	if(distance_to_object(obj_main_character) <= guard_current_detect_range)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 540E3416
		/// @DnDParent : 3BA15133
		/// @DnDArgument : "expr" " point_direction(x, y, obj_main_character.x, obj_main_character.y)"
		/// @DnDArgument : "var" "direction"
		direction =  point_direction(x, y, obj_main_character.x, obj_main_character.y);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6CB6C575
		/// @DnDParent : 3BA15133
		/// @DnDArgument : "expr" "guard_chase_speed"
		/// @DnDArgument : "var" "speed"
		speed = guard_chase_speed;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4D2B3DF9
	/// @DnDParent : 583C0269
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 083AB6AD
		/// @DnDParent : 4D2B3DF9
		/// @DnDArgument : "expr" "guard_patrol_speed"
		/// @DnDArgument : "var" "speed"
		speed = guard_patrol_speed;
	}
}