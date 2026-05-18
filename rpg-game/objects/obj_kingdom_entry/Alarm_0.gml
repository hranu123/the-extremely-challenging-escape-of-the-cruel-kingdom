/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 0AE9538C
/// @DnDArgument : "room" "Level1"
/// @DnDSaveInfo : "room" "Level1"
room_goto(Level1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21AB8583
/// @DnDArgument : "expr" "global.max_lives"
/// @DnDArgument : "var" "global.lives"
global.lives = global.max_lives;