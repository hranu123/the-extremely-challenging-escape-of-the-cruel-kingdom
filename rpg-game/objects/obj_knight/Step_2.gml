/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 382CA5D1
/// @DnDArgument : "expr" "abs(hspeed) > abs(vspeed)"
if(abs(hspeed) > abs(vspeed))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1515D059
	/// @DnDParent : 382CA5D1
	/// @DnDArgument : "expr" " hspeed > 0"
	if( hspeed > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1090C5C0
		/// @DnDParent : 1515D059
		/// @DnDArgument : "spriteind" "spr_knight_right"
		/// @DnDSaveInfo : "spriteind" "spr_knight_right"
		sprite_index = spr_knight_right;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 168EBAE6
	/// @DnDParent : 382CA5D1
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5296CD8D
		/// @DnDParent : 168EBAE6
		/// @DnDArgument : "spriteind" "spr_knight_left"
		/// @DnDSaveInfo : "spriteind" "spr_knight_left"
		sprite_index = spr_knight_left;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0DDBB918
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2D5A84EB
	/// @DnDParent : 0DDBB918
	/// @DnDArgument : "expr" " vspeed > 0"
	if( vspeed > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 32AB263E
		/// @DnDParent : 2D5A84EB
		/// @DnDArgument : "spriteind" "spr_knight_down"
		/// @DnDSaveInfo : "spriteind" "spr_knight_down"
		sprite_index = spr_knight_down;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 39D16CD7
	/// @DnDParent : 0DDBB918
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0EAB0EAE
		/// @DnDParent : 39D16CD7
		/// @DnDArgument : "spriteind" "spr_knight_up"
		/// @DnDSaveInfo : "spriteind" "spr_knight_up"
		sprite_index = spr_knight_up;
		image_index = 0;
	}
}