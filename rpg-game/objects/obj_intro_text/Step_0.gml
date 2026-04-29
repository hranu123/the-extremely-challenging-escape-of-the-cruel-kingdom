/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C481AD3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "var_intro_timer"
var_intro_timer += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16C018EB
/// @DnDArgument : "var" "var_intro_timer"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "300"
if(var_intro_timer >= 300)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F2C0ED1
	/// @DnDParent : 16C018EB
	/// @DnDArgument : "expr" "-0.02"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "var_intro_alpha"
	var_intro_alpha += -0.02;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 108C338F
	/// @DnDParent : 16C018EB
	/// @DnDArgument : "var" "var_intro_timer"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "360"
	if(var_intro_timer >= 360)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 7F7283E8
		/// @DnDParent : 108C338F
		room_goto_next();
	}
}