/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48D04FC4
/// @DnDArgument : "expr" "1.5"
/// @DnDArgument : "var" "guard_patrol_speed"
guard_patrol_speed = 1.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7EE3FA19
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "guard_chase_speed"
guard_chase_speed = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1DAFC6BE
/// @DnDArgument : "expr" "300"
/// @DnDArgument : "var" "guard_walk_detect_range"
guard_walk_detect_range = 300;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4480C8D5
/// @DnDArgument : "expr" "2000"
/// @DnDArgument : "var" "guard_sprint_detect_range"
guard_sprint_detect_range = 2000;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6EBF275A
/// @DnDArgument : "expr" "guard_walk_detect_range"
/// @DnDArgument : "var" "guard_current_detect_range"
guard_current_detect_range = guard_walk_detect_range;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0EC931FF
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "guard_follow_distance"
guard_follow_distance = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 66786C84
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "guard_distance_buffer"
guard_distance_buffer = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BF7ACBE
/// @DnDArgument : "expr" "guard_patrol_speed"
/// @DnDArgument : "var" "speed"
speed = guard_patrol_speed;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 49526375
/// @DnDArgument : "direction" "90,180,0,270"
direction = choose(90,180,0,270);