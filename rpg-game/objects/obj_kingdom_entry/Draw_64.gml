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
		/// @DnDHash : 3E732DFA
		/// @DnDParent : 04AD278A
		/// @DnDArgument : "color" "$FF00C2FF"
		draw_set_colour($FF00C2FF & $ffffff);
		var l3E732DFA_0=($FF00C2FF >> 24);
		draw_set_alpha(l3E732DFA_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 37CE9465
		/// @DnDParent : 04AD278A
		/// @DnDArgument : "x" "650"
		/// @DnDArgument : "y" "525"
		/// @DnDArgument : "caption" ""Press V to enter Kingdom ""
		draw_text(650, 525, string("Press V to enter Kingdom ") + "");
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
	/// @DnDHash : 75E2F7B9
	/// @DnDParent : 43D3D89D
	/// @DnDArgument : "color" "$FF00C2FF"
	draw_set_colour($FF00C2FF & $ffffff);
	var l75E2F7B9_0=($FF00C2FF >> 24);
	draw_set_alpha(l75E2F7B9_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 40F2F21D
	/// @DnDParent : 43D3D89D
	/// @DnDArgument : "x" "650 + random_range(-(30 - transport_timer), (30 - transport_timer))"
	/// @DnDArgument : "y" "525 + random_range(-(30 - transport_timer), (30 - transport_timer))"
	/// @DnDArgument : "caption" ""Entering Kingdom.. ""
	/// @DnDArgument : "angle" "random_range(-1,1)"
	draw_text_transformed(650 + random_range(-(30 - transport_timer), (30 - transport_timer)), 525 + random_range(-(30 - transport_timer), (30 - transport_timer)), string("Entering Kingdom.. ") + "", 1, 1, random_range(-1,1));
}