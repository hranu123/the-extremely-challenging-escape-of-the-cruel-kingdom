/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 17FA3887
/// @DnDArgument : "code" "display_set_gui_size(1210, 990);$(13_10)"
display_set_gui_size(1210, 990);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 00955535
/// @DnDArgument : "expr" "4.5"
/// @DnDArgument : "var" "var_walk_speed"
var_walk_speed = 4.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5DDFEB8F
/// @DnDArgument : "expr" "9.5"
/// @DnDArgument : "var" "var_main_sprint"
var_main_sprint = 9.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 375B02FB
/// @DnDArgument : "expr" "var_walk_speed"
/// @DnDArgument : "var" "var_main_speed"
var_main_speed = var_walk_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 697D595F
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "var_walk_animation"
var_walk_animation = 5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C039344
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "var_sprint_animation"
var_sprint_animation = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63887AD5
/// @DnDArgument : "expr" "var_walk_animation"
/// @DnDArgument : "var" "var_main_animation_speed"
var_main_animation_speed = var_walk_animation;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A499C2A
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "global.var_has_keycard "
global.var_has_keycard  = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4FFB74B0
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "global.var_dead"
global.var_dead = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 77C6ECCD
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "var_can_take_damage"
var_can_take_damage = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2146DE11
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "global.player_sprinting"
global.player_sprinting = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13B83BCC
/// @DnDArgument : "expr" ""none""
/// @DnDArgument : "var" "global.death_cause"
global.death_cause = "none";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2656DD7B
/// @DnDArgument : "var" "damage_timer"
damage_timer = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 175498ED
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "global.bear_trapped"
global.bear_trapped = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E42062B
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "bear_escape_presses"
bear_escape_presses = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79EB2163
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "player_can_move"
player_can_move = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6F3D6563
/// @DnDArgument : "var" "bear_trap_cooldown"
bear_trap_cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1DE277D6
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "global.alarm_active"
global.alarm_active = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16201FFE
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "var" "current_bear_trap"
current_bear_trap = noone;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3AD7940C
/// @DnDArgument : "var" "current_trap_damage"
current_trap_damage = 0;