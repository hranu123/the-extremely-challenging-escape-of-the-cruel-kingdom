/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CB45C24
/// @DnDArgument : "var" "global.var_coincount"
/// @DnDArgument : "value" "5"
if(global.var_coincount == 5)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 2DE89F11
	/// @DnDParent : 6CB45C24
	room_goto_next();
}