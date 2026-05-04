/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 75D49179
/// @DnDArgument : "key" "ord("Q")"
var l75D49179_0;
l75D49179_0 = keyboard_check_pressed(ord("Q"));
if (l75D49179_0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4B67222C
	/// @DnDParent : 75D49179
	room_restart();

	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 19B94654
	/// @DnDParent : 75D49179
	game_restart();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 25D4B06A
	/// @DnDParent : 75D49179
	/// @DnDArgument : "room" "Controls_lobby"
	/// @DnDSaveInfo : "room" "Controls_lobby"
	room_goto(Controls_lobby);
}