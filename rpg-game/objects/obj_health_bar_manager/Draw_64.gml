/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28B6EAB8
/// @DnDArgument : "var" "global.lives"
/// @DnDArgument : "op" "2"
if(global.lives > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5FEC5285
	/// @DnDParent : 28B6EAB8
	/// @DnDArgument : "x" "950"
	/// @DnDArgument : "sprite" "spr_heart1"
	/// @DnDSaveInfo : "sprite" "spr_heart1"
	draw_sprite(spr_heart1, 0, 950, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75F6375E
	/// @DnDParent : 28B6EAB8
	/// @DnDArgument : "var" "global.lives"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1"
	if(global.lives > 1)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 439D730B
		/// @DnDParent : 75F6375E
		/// @DnDArgument : "x" "1010"
		/// @DnDArgument : "sprite" "spr_heart1"
		/// @DnDSaveInfo : "sprite" "spr_heart1"
		draw_sprite(spr_heart1, 0, 1010, 0);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 588CDD2A
		/// @DnDParent : 75F6375E
		/// @DnDArgument : "var" "global.lives"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "2"
		if(global.lives > 2)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 77CD7CD3
			/// @DnDParent : 588CDD2A
			/// @DnDArgument : "x" "1070"
			/// @DnDArgument : "sprite" "spr_heart1"
			/// @DnDSaveInfo : "sprite" "spr_heart1"
			draw_sprite(spr_heart1, 0, 1070, 0);
		}
	}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5C2B28C4
/// @DnDArgument : "x" "930"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "caption" ""Lives: ""
/// @DnDArgument : "var" "global.lives"
draw_text(930, 70, string("Lives: ") + string(global.lives));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 0727CCE4
/// @DnDArgument : "x1" "750"
/// @DnDArgument : "y1" "180"
/// @DnDArgument : "x2" "1250"
/// @DnDArgument : "y2" "150"
/// @DnDArgument : "backcol" "$FF1919FF"
/// @DnDArgument : "barcol" "$FF0000FF"
draw_healthbar(750, 180, 1250, 150, 100, $FF1919FF & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, 0, (($FF1919FF>>24) != 0), (($FF0000FF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 680EE71B
/// @DnDArgument : "x" "915"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "caption" ""Health: ""
/// @DnDArgument : "var" "global.health"
draw_text(915, 100, string("Health: ") + string(global.health));