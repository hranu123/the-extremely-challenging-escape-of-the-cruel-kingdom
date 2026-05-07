/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 3E3A6E13
/// @DnDArgument : "key" "ord("R")"
var l3E3A6E13_0;
l3E3A6E13_0 = keyboard_check_pressed(ord("R"));
if (l3E3A6E13_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26492CF1
	/// @DnDParent : 3E3A6E13
	/// @DnDArgument : "expr" "room_restart(Level1)"
	/// @DnDArgument : "var" "global.restart_room"
	global.restart_room = room_restart(Level1);
}