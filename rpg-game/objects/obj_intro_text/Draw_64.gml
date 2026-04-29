/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7495C37F
/// @DnDArgument : "font" "fnt_intro_text"
/// @DnDSaveInfo : "font" "fnt_intro_text"
draw_set_font(fnt_intro_text);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 42D44542
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 65780D52
draw_set_colour($FFFFFFFF & $ffffff);
var l65780D52_0=($FFFFFFFF >> 24);
draw_set_alpha(l65780D52_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 6E602A85
/// @DnDArgument : "alpha" "var_intro_alpha"
draw_set_alpha(var_intro_alpha);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05F48183
/// @DnDArgument : "var" "var_intro_timer"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "20"
if(var_intro_timer >= 20)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 72091B94
	/// @DnDParent : 05F48183
	/// @DnDArgument : "x" "683"
	/// @DnDArgument : "y" "220"
	/// @DnDArgument : "caption" ""Welcome to the cruel castle! ""
	draw_text(683, 220, string("Welcome to the cruel castle! ") + "");

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CBA6B84
	/// @DnDParent : 05F48183
	/// @DnDArgument : "var" "var_intro_timer"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "80"
	if(var_intro_timer >= 80)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3F78DCD4
		/// @DnDParent : 3CBA6B84
		/// @DnDArgument : "x" "683"
		/// @DnDArgument : "y" "290"
		/// @DnDArgument : "caption" ""Are you capable of helping your brother escape from""
		draw_text(683, 290, string("Are you capable of helping your brother escape from") + "");
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43F152A9
		/// @DnDParent : 3CBA6B84
		/// @DnDArgument : "var" "var_intro_timer"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "140"
		if(var_intro_timer >= 140)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 42809675
			/// @DnDParent : 43F152A9
			/// @DnDArgument : "x" "683"
			/// @DnDArgument : "y" "360"
			/// @DnDArgument : "caption" ""King Horrible Harold III, his knights, and the Queen, ""
			draw_text(683, 360, string("King Horrible Harold III, his knights, and the Queen, ") + "");
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55BB0D80
			/// @DnDParent : 43F152A9
			/// @DnDArgument : "var" "var_intro_timer"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "200"
			if(var_intro_timer >= 200)
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Value
				/// @DnDVersion : 1
				/// @DnDHash : 3D46487E
				/// @DnDParent : 55BB0D80
				/// @DnDArgument : "x" "683"
				/// @DnDArgument : "y" "430"
				/// @DnDArgument : "caption" ""or will you be captured like previous visitors ""
				draw_text(683, 430, string("or will you be captured like previous visitors ") + "");
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 398B48E2
				/// @DnDParent : 55BB0D80
				/// @DnDArgument : "var" "var_intro_timer"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "260"
				if(var_intro_timer >= 260)
				{
					/// @DnDAction : YoYo Games.Drawing.Draw_Value
					/// @DnDVersion : 1
					/// @DnDHash : 212113D5
					/// @DnDParent : 398B48E2
					/// @DnDArgument : "x" "683"
					/// @DnDArgument : "y" "500"
					/// @DnDArgument : "caption" ""who attempted to save their friends!!! ""
					draw_text(683, 500, string("who attempted to save their friends!!! ") + "");
				
					/// @DnDAction : YoYo Games.Drawing.Set_Alpha
					/// @DnDVersion : 1
					/// @DnDHash : 5DE0865F
					/// @DnDParent : 398B48E2
					draw_set_alpha(1);
				}
			}
		}
	}
}