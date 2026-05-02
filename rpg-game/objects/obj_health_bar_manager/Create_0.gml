/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14B51CE0
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "global.max_lives"
global.max_lives = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C2C2E56
/// @DnDArgument : "expr" "global.max_lives"
/// @DnDArgument : "var" "global.lives"
global.lives = global.max_lives;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F1F8ABF
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "global.max_health"
global.max_health = 100;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E2F6CD9
/// @DnDArgument : "expr" "global.max_health"
/// @DnDArgument : "var" "global.health"
global.health = global.max_health;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DB348DA
/// @DnDArgument : "expr" "Level1"
/// @DnDArgument : "var" "global.start_room"
global.start_room = Level1;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 7DA10103
/// @DnDArgument : "value" "true"
/// @DnDArgument : "instvar" "7"
persistent = true;