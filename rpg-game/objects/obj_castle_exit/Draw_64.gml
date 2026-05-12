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
		/// @DnDArgument : "font" "fnt_transport_text"
		/// @DnDSaveInfo : "font" "fnt_transport_text"
		draw_set_font(fnt_transport_text);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2AF9136D
		/// @DnDParent : 04AD278A
		/// @DnDArgument : "color" "$FF06A2E5"
		/// @DnDArgument : "alpha" "false"
		draw_set_colour($FF06A2E5 & $ffffff);draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 37CE9465
		/// @DnDParent : 04AD278A
		/// @DnDArgument : "x" "650"
		/// @DnDArgument : "y" "600"
		/// @DnDArgument : "caption" ""Press V to exit Castle ""
		/// @DnDArgument : "var" "0"
		draw_text(650, 600, string("Press V to exit Castle ") + string(0));
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
	/// @DnDArgument : "font" "fnt_transport_text"
	/// @DnDSaveInfo : "font" "fnt_transport_text"
	draw_set_font(fnt_transport_text);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0B1A1F2E
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
	/// @DnDArgument : "caption" ""Exiting Castle.. ""
	/// @DnDArgument : "angle" "random_range(-2,2)"
	draw_text_transformed(display_get_gui_width()/2 + random_range(-(30 - transport_timer), (30 - transport_timer)), display_get_gui_height()/2 + random_range(-(30 - transport_timer), (30 - transport_timer)), string("Exiting Castle.. ") + "", 1, 1, random_range(-2,2));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41172BDF
/// @DnDArgument : "var" "access_denied_timer"
/// @DnDArgument : "op" "2"
if(access_denied_timer > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 74881829
	/// @DnDParent : 41172BDF
	/// @DnDArgument : "font" "fnt_transport_text"
	/// @DnDSaveInfo : "font" "fnt_transport_text"
	draw_set_font(fnt_transport_text);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 5B5E4702
	/// @DnDParent : 41172BDF
	/// @DnDArgument : "color" "$FF1111B2"
	draw_set_colour($FF1111B2 & $ffffff);
	var l5B5E4702_0=($FF1111B2 >> 24);
	draw_set_alpha(l5B5E4702_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 396BA30F
	/// @DnDParent : 41172BDF
	/// @DnDArgument : "x" "display_get_gui_width()/2"
	/// @DnDArgument : "y" "display_get_gui_height()/2 + 120"
	/// @DnDArgument : "xscale" "1.3"
	/// @DnDArgument : "yscale" "1.3"
	/// @DnDArgument : "caption" ""ACCESS DENIED ""
	/// @DnDArgument : "angle" "random_range(-2,2)"
	draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/2 + 120, string("ACCESS DENIED ") + "", 1.3, 1.3, random_range(-2,2));
}