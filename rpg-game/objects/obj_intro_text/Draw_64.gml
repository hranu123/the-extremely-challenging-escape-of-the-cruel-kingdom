/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5F077A41
/// @DnDArgument : "font" "fnt_intro_text"
draw_set_font(fnt_intro_text);

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

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 706123A2
/// @DnDArgument : "x" "300"
/// @DnDArgument : "y" "650"
/// @DnDArgument : "caption" ""Welcome to the cruel castle! Are you capable of helping your brother escape from King Horrible Harold III, along with his fellow knights and Queen, or will you be captured like our previous visitors who attempted to save their friends?" "
draw_text(300, 650, string("Welcome to the cruel castle! Are you capable of helping your brother escape from King Horrible Harold III, along with his fellow knights and Queen, or will you be captured like our previous visitors who attempted to save their friends?" ) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 6C19C1AA
draw_set_alpha(1);