/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 11DF52E7
/// @DnDArgument : "font" "fnt_coin_count"
/// @DnDSaveInfo : "font" "fnt_coin_count"
draw_set_font(fnt_coin_count);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FF48DDA
/// @DnDArgument : "var" "global.var_has_keycard"
/// @DnDArgument : "value" "true"
if(global.var_has_keycard == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 09073039
	/// @DnDParent : 0FF48DDA
	/// @DnDArgument : "color" "$A30000E5"
	draw_set_colour($A30000E5 & $ffffff);
	var l09073039_0=($A30000E5 >> 24);
	draw_set_alpha(l09073039_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 78357839
	/// @DnDParent : 0FF48DDA
	/// @DnDArgument : "x1" "1150"
	/// @DnDArgument : "y1" "5"
	/// @DnDArgument : "x2" "1500"
	/// @DnDArgument : "y2" "100"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(1150, 5, 1500, 100, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4E94FBF7
	/// @DnDParent : 0FF48DDA
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 094E9D5B
	/// @DnDParent : 0FF48DDA
	/// @DnDArgument : "x" "1275"
	/// @DnDArgument : "sprite" "spr_keycard_icon"
	/// @DnDSaveInfo : "sprite" "spr_keycard_icon"
	var l094E9D5B_0 = sprite_get_width(spr_keycard_icon);
	var l094E9D5B_1 = 0;
	for(var l094E9D5B_2 = 1; l094E9D5B_2 > 0; --l094E9D5B_2) {
		draw_sprite(spr_keycard_icon, 0, 1275 + l094E9D5B_1, 0);
		l094E9D5B_1 += l094E9D5B_0;
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 57DE37E5
	/// @DnDParent : 0FF48DDA
	/// @DnDArgument : "x" "1275"
	/// @DnDArgument : "sprite" "spr_keycard_icon"
	/// @DnDSaveInfo : "sprite" "spr_keycard_icon"
	var l57DE37E5_0 = sprite_get_width(spr_keycard_icon);
	var l57DE37E5_1 = 0;
	for(var l57DE37E5_2 = 1; l57DE37E5_2 > 0; --l57DE37E5_2) {
		draw_sprite(spr_keycard_icon, 0, 1275 + l57DE37E5_1, 0);
		l57DE37E5_1 += l57DE37E5_0;
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3740EEC8
	/// @DnDParent : 0FF48DDA
	/// @DnDArgument : "x" "1150"
	/// @DnDArgument : "y" "13"
	/// @DnDArgument : "caption" ""Keycard: Yes ""
	draw_text(1150, 13, string("Keycard: Yes ") + "");
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 30BF4DF2
else
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 1991C6FB
	/// @DnDParent : 30BF4DF2
	/// @DnDArgument : "font" "fnt_coin_count"
	/// @DnDSaveInfo : "font" "fnt_coin_count"
	draw_set_font(fnt_coin_count);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 5C564870
	/// @DnDParent : 30BF4DF2
	/// @DnDArgument : "color" "$A30000E5"
	draw_set_colour($A30000E5 & $ffffff);
	var l5C564870_0=($A30000E5 >> 24);
	draw_set_alpha(l5C564870_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 35EC81C3
	/// @DnDParent : 30BF4DF2
	/// @DnDArgument : "x1" "1150"
	/// @DnDArgument : "y1" "5"
	/// @DnDArgument : "x2" "1500"
	/// @DnDArgument : "y2" "100"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(1150, 5, 1500, 100, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 36337465
	/// @DnDParent : 30BF4DF2
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6AD67A6E
	/// @DnDParent : 30BF4DF2
	/// @DnDArgument : "x" "1150"
	/// @DnDArgument : "y" "13"
	/// @DnDArgument : "caption" ""Keycard:No ""
	draw_text(1150, 13, string("Keycard:No ") + "");
}