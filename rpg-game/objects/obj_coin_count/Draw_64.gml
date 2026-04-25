/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3E4DE551
/// @DnDArgument : "color" "$ADFF0F1A"
draw_set_colour($ADFF0F1A & $ffffff);
var l3E4DE551_0=($ADFF0F1A >> 24);
draw_set_alpha(l3E4DE551_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 79B01E1B
/// @DnDArgument : "x1" "12"
/// @DnDArgument : "y1" "10"
/// @DnDArgument : "x2" "350"
/// @DnDArgument : "y2" "80"
/// @DnDArgument : "fill" "1"
draw_rectangle(12, 10, 350, 80, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0E86D75B
/// @DnDArgument : "color" "$FFFF00AB"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFF00AB & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 46C4A14A
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "12"
/// @DnDArgument : "sprite" "spr_coinicon"
/// @DnDSaveInfo : "sprite" "spr_coinicon"
var l46C4A14A_0 = sprite_get_width(spr_coinicon);
var l46C4A14A_1 = 0;
for(var l46C4A14A_2 = 1; l46C4A14A_2 > 0; --l46C4A14A_2) {
	draw_sprite(spr_coinicon, 0, 10 + l46C4A14A_1, 12);
	l46C4A14A_1 += l46C4A14A_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 756AEED5
/// @DnDArgument : "x" "45"
/// @DnDArgument : "y" "13"
/// @DnDArgument : "caption" ""Coins:""
draw_text(45, 13, string("Coins:") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 25C5C066
/// @DnDArgument : "x" "90"
/// @DnDArgument : "y" "12"
/// @DnDArgument : "sprite" "spr_coinicon"
/// @DnDArgument : "number" "global.var_coincount"
/// @DnDSaveInfo : "sprite" "spr_coinicon"
var l25C5C066_0 = sprite_get_width(spr_coinicon);
var l25C5C066_1 = 0;
for(var l25C5C066_2 = global.var_coincount; l25C5C066_2 > 0; --l25C5C066_2) {
	draw_sprite(spr_coinicon, 0, 90 + l25C5C066_1, 12);
	l25C5C066_1 += l25C5C066_0;
}