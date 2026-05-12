/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 56314659
/// @DnDArgument : "color" "$A1E50000"
draw_set_colour($A1E50000 & $ffffff);
var l56314659_0=($A1E50000 >> 24);
draw_set_alpha(l56314659_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5A148053
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "-15"
/// @DnDArgument : "sprite" "spr_arrow_to_return_to_lobby"
/// @DnDSaveInfo : "sprite" "spr_arrow_to_return_to_lobby"
draw_sprite(spr_arrow_to_return_to_lobby, 0, 10, -15);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0D1C740A
/// @DnDArgument : "x" "35"
/// @DnDArgument : "caption" ""Press arrow to return to lobby ""
draw_text(35, 0, string("Press arrow to return to lobby ") + "");