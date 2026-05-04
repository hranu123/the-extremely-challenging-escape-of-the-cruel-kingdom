/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 14E7D28C
/// @DnDArgument : "key" "ord("R")"
var l14E7D28C_0;
l14E7D28C_0 = keyboard_check_pressed(ord("R"));
if (l14E7D28C_0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3DE4ADF5
	/// @DnDParent : 14E7D28C
	room_restart();
}