/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D06EF95
/// @DnDArgument : "var" "player_touching_door"
/// @DnDArgument : "value" "true"
if(player_touching_door == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 5970F809
	/// @DnDParent : 5D06EF95
	/// @DnDArgument : "font" "fnt_door"
	/// @DnDSaveInfo : "font" "fnt_door"
	draw_set_font(fnt_door);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 3799F304
	/// @DnDParent : 5D06EF95
	/// @DnDArgument : "color" "$FF06A2E5"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF06A2E5 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5C828416
	/// @DnDParent : 5D06EF95
	/// @DnDArgument : "x" "500"
	/// @DnDArgument : "y" "200"
	/// @DnDArgument : "caption" ""Press V to enter ""
	draw_text(500, 200, string("Press V to enter ") + "");
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20295D8A
/// @DnDArgument : "var" "player_touching_door"
/// @DnDArgument : "value" "true"
if(player_touching_door == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54EB2E36
	/// @DnDParent : 20295D8A
	/// @DnDArgument : "var" "global.var_coincount"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "15"
	if(global.var_coincount < 15)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AC7DD49
		/// @DnDParent : 54EB2E36
		/// @DnDArgument : "var" "global.var_has_keycard"
		/// @DnDArgument : "value" "false"
		if(global.var_has_keycard == false)
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Font
			/// @DnDVersion : 1
			/// @DnDHash : 7D17FA70
			/// @DnDParent : 5AC7DD49
			/// @DnDArgument : "font" "fnt_door"
			/// @DnDSaveInfo : "font" "fnt_door"
			draw_set_font(fnt_door);
		
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 4E928FF2
			/// @DnDParent : 5AC7DD49
			/// @DnDArgument : "color" "$FF06A2E5"
			/// @DnDArgument : "alpha" "false"
			draw_set_colour($FF06A2E5 & $ffffff);draw_set_alpha(1);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 72045477
			/// @DnDParent : 5AC7DD49
			/// @DnDArgument : "x" "400"
			/// @DnDArgument : "y" "300"
			/// @DnDArgument : "caption" ""15 TOTAL COINS AND KEYCARD REQUIRED""
			draw_text(400, 300, string("15 TOTAL COINS AND KEYCARD REQUIRED") + "");
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 174B2A86
/// @DnDArgument : "var" "player_touching_door"
/// @DnDArgument : "value" "true"
if(player_touching_door == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 443189AE
	/// @DnDParent : 174B2A86
	/// @DnDArgument : "var" "global.var_coincount"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "15"
	if(global.var_coincount < 15)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6CB01CA9
		/// @DnDParent : 443189AE
		/// @DnDArgument : "var" "global.var_has_keycard"
		/// @DnDArgument : "value" "true"
		if(global.var_has_keycard == true)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 790BAE35
			/// @DnDParent : 6CB01CA9
			/// @DnDArgument : "x" "500"
			/// @DnDArgument : "y" "300"
			/// @DnDArgument : "caption" ""NOT ENOUGH COINS""
			draw_text(500, 300, string("NOT ENOUGH COINS") + "");
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6083E688
/// @DnDArgument : "var" "player_touching_door"
/// @DnDArgument : "value" "true"
if(player_touching_door == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DBE36DA
	/// @DnDParent : 6083E688
	/// @DnDArgument : "var" "global.var_coincount"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "15"
	if(global.var_coincount >= 15)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20AE6B71
		/// @DnDParent : 6DBE36DA
		/// @DnDArgument : "var" "global.var_has_keycard"
		/// @DnDArgument : "value" "false"
		if(global.var_has_keycard == false)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 24A62A4D
			/// @DnDParent : 20AE6B71
			/// @DnDArgument : "x" "500"
			/// @DnDArgument : "y" "300"
			/// @DnDArgument : "caption" ""KEYCARD REQUIRED""
			draw_text(500, 300, string("KEYCARD REQUIRED") + "");
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43D3D89D
/// @DnDArgument : "var" "door_sequence_started"
/// @DnDArgument : "value" "true"
if(door_sequence_started == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E1FAD62
	/// @DnDParent : 43D3D89D
	/// @DnDArgument : "var" "global.var_coincount"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "15"
	if(global.var_coincount >= 15)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3470F2DC
		/// @DnDParent : 6E1FAD62
		/// @DnDArgument : "var" "global.var_has_keycard"
		/// @DnDArgument : "value" "true"
		if(global.var_has_keycard == true)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 66B16A09
			/// @DnDParent : 3470F2DC
			/// @DnDArgument : "key" "ord("V")"
			var l66B16A09_0;
			l66B16A09_0 = keyboard_check_pressed(ord("V"));
			if (l66B16A09_0)
			{
				/// @DnDAction : YoYo Games.Drawing.Set_Font
				/// @DnDVersion : 1
				/// @DnDHash : 503155EE
				/// @DnDParent : 66B16A09
				/// @DnDArgument : "font" "fnt_door"
				/// @DnDSaveInfo : "font" "fnt_door"
				draw_set_font(fnt_door);
			
				/// @DnDAction : YoYo Games.Drawing.Set_Color
				/// @DnDVersion : 1
				/// @DnDHash : 4AED25EA
				/// @DnDParent : 66B16A09
				/// @DnDArgument : "color" "$FF06A2E5"
				/// @DnDArgument : "alpha" "false"
				draw_set_colour($FF06A2E5 & $ffffff);draw_set_alpha(1);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 40F2F21D
				/// @DnDParent : 66B16A09
				/// @DnDArgument : "x" "550 + random_range(-(30 - transport_timer), (30 - transport_timer))"
				/// @DnDArgument : "y" "200 + random_range(-(30 - transport_timer), (30 - transport_timer))"
				/// @DnDArgument : "caption" ""Exiting Castle.. ""
				/// @DnDArgument : "angle" "random_range(-2,2)"
				draw_text_transformed(550 + random_range(-(30 - transport_timer), (30 - transport_timer)), 200 + random_range(-(30 - transport_timer), (30 - transport_timer)), string("Exiting Castle.. ") + "", 1, 1, random_range(-2,2));
			}
		}
	}
}