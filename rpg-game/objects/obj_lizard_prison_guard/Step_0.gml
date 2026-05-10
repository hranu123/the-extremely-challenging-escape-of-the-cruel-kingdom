/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 64A8DF55
/// @DnDArgument : "expr" "distance_to_object(obj_main_character) <= guard_walk_detect_range || (global.player_sprinting == true && distance_to_object(obj_main_character) <= guard_sprint_detect_range)"
if(distance_to_object(obj_main_character) <= guard_walk_detect_range || (global.player_sprinting == true && distance_to_object(obj_main_character) <= guard_sprint_detect_range))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E21A72E
	/// @DnDParent : 64A8DF55
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "global.has_discovered_player"
	global.has_discovered_player = true;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1051E1D8
/// @DnDArgument : "var" "global.has_discovered_player"
/// @DnDArgument : "value" "true"
if(global.has_discovered_player == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FCF64E4
	/// @DnDParent : 1051E1D8
	/// @DnDArgument : "expr" "point_direction(x, y, obj_main_character.x, obj_main_character.y)"
	/// @DnDArgument : "var" "direction"
	direction = point_direction(x, y, obj_main_character.x, obj_main_character.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63795057
	/// @DnDParent : 1051E1D8
	/// @DnDArgument : "expr" "guard_chase_speed"
	/// @DnDArgument : "var" "speed"
	speed = guard_chase_speed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F51724F
	/// @DnDParent : 1051E1D8
	/// @DnDArgument : "expr" "guard_chase_animation_speed"
	/// @DnDArgument : "var" "guard_animation_speed"
	guard_animation_speed = guard_chase_animation_speed;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 36D2EB5C
	/// @DnDParent : 1051E1D8
	/// @DnDArgument : "soundid" "snd_alarm"
	/// @DnDSaveInfo : "soundid" "snd_alarm"
	audio_play_sound(snd_alarm, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 055F755D
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13477104
	/// @DnDParent : 055F755D
	/// @DnDArgument : "expr" "guard_patrol_direction"
	/// @DnDArgument : "var" "direction"
	direction = guard_patrol_direction;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F82C37F
	/// @DnDParent : 055F755D
	/// @DnDArgument : "expr" "guard_patrol_speed"
	/// @DnDArgument : "var" "speed"
	speed = guard_patrol_speed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2AF82229
	/// @DnDParent : 055F755D
	/// @DnDArgument : "expr" "guard_patrol_animation_speed"
	/// @DnDArgument : "var" "guard_animation_speed"
	guard_animation_speed = guard_patrol_animation_speed;
}