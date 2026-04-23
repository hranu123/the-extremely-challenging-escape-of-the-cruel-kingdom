/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C8A737F
/// @DnDArgument : "expr" "6.5"
/// @DnDArgument : "var" "var_coin_speed"
var_coin_speed = 6.5;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 1E170692
/// @DnDArgument : "direction" "90,180,0,270"
direction = choose(90,180,0,270);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5FE03D99
/// @DnDArgument : "speed" "var_coin_speed"
speed = var_coin_speed;