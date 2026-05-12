/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20295D8A
/// @DnDArgument : "var" "player_touching_door"
/// @DnDArgument : "value" "true"
if(player_touching_door == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04AD278A
	/// @DnDParent : 20295D8A
	/// @DnDArgument : "var" "door_sequence_started"
	/// @DnDArgument : "value" "false"
	if(door_sequence_started == false)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 47A6A35C
		/// @DnDParent : 04AD278A
		/// @DnDArgument : "font" "fnt_gui"
		/// @DnDSaveInfo : "font" "fnt_gui"
		draw_set_font(fnt_gui);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6B0D1556
		/// @DnDParent : 04AD278A
		/// @DnDArgument : "color" "$FF06A2E5"
		/// @DnDArgument : "alpha" "false"
		draw_set_colour($FF06A2E5 & $ffffff);draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 37CE9465
		/// @DnDParent : 04AD278A
		/// @DnDArgument : "x" "600"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" ""Press V to enter Castle: Total Coins required: ""
		/// @DnDArgument : "var" "5"
		draw_text(600, 300, string("Press V to enter Castle: Total Coins required: ") + string(5));
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43D3D89D
/// @DnDArgument : "var" "door_sequence_started"
/// @DnDArgument : "value" "true"
if(door_sequence_started == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 503155EE
	/// @DnDParent : 43D3D89D
	/// @DnDArgument : "font" "fnt_gui"
	/// @DnDSaveInfo : "font" "fnt_gui"
	draw_set_font(fnt_gui);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 30FC5FE7
	/// @DnDParent : 43D3D89D
	/// @DnDArgument : "color" "$FF06A2E5"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF06A2E5 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 40F2F21D
	/// @DnDParent : 43D3D89D
	/// @DnDArgument : "x" "display_get_gui_width()/2 + random_range(-(30 - transport_timer), (30 - transport_timer))"
	/// @DnDArgument : "y" "display_get_gui_height()/2 + random_range(-(30 - transport_timer), (30 - transport_timer))"
	/// @DnDArgument : "caption" ""Entering Castle.. ""
	/// @DnDArgument : "angle" "random_range(-2,2)"
	draw_text_transformed(display_get_gui_width()/2 + random_range(-(30 - transport_timer), (30 - transport_timer)), display_get_gui_height()/2 + random_range(-(30 - transport_timer), (30 - transport_timer)), string("Entering Castle.. ") + "", 1, 1, random_range(-2,2));
}