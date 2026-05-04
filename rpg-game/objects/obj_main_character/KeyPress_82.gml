/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2B2178CA
/// @DnDArgument : "key" "ord("R")"
var l2B2178CA_0;
l2B2178CA_0 = keyboard_check_pressed(ord("R"));
if (l2B2178CA_0)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 066170F9
	/// @DnDParent : 2B2178CA
	game_restart();

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1D065F6A
	/// @DnDParent : 2B2178CA
	room_restart();
}