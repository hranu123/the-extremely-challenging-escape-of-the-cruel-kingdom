/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2CD1991D
/// @DnDArgument : "key" "vk_escape"
var l2CD1991D_0;
l2CD1991D_0 = keyboard_check_pressed(vk_escape);
if (l2CD1991D_0)
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 7B3CF912
	/// @DnDParent : 2CD1991D
	game_end();
}