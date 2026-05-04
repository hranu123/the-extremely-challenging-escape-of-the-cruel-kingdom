/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6F5A379C
/// @DnDArgument : "expr" "abs(hspeed) > abs(vspeed)"
if(abs(hspeed) > abs(vspeed))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2D315968
	/// @DnDParent : 6F5A379C
	/// @DnDArgument : "expr" " hspeed > 0"
	if( hspeed > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4EE3E5B1
		/// @DnDParent : 2D315968
		/// @DnDArgument : "imageind" "-1"
		/// @DnDArgument : "spriteind" "spr_demon_guard_right"
		/// @DnDSaveInfo : "spriteind" "spr_demon_guard_right"
		sprite_index = spr_demon_guard_right;
		image_index = -1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4CA47B48
	/// @DnDParent : 6F5A379C
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0D3BEF71
		/// @DnDParent : 4CA47B48
		/// @DnDArgument : "imageind" "-1"
		/// @DnDArgument : "spriteind" "spr_demon_guard_left"
		/// @DnDSaveInfo : "spriteind" "spr_demon_guard_left"
		sprite_index = spr_demon_guard_left;
		image_index = -1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 27C289AA
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5959C4F1
	/// @DnDParent : 27C289AA
	/// @DnDArgument : "expr" " vspeed > 0"
	if( vspeed > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6289C54B
		/// @DnDParent : 5959C4F1
		/// @DnDArgument : "imageind" "-1"
		/// @DnDArgument : "spriteind" "spr_demon_guard_down"
		/// @DnDSaveInfo : "spriteind" "spr_demon_guard_down"
		sprite_index = spr_demon_guard_down;
		image_index = -1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 41778A83
	/// @DnDParent : 27C289AA
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 618AAD11
		/// @DnDParent : 41778A83
		/// @DnDArgument : "imageind" "-1"
		/// @DnDArgument : "spriteind" "spr_demon_guard_up"
		/// @DnDSaveInfo : "spriteind" "spr_demon_guard_up"
		sprite_index = spr_demon_guard_up;
		image_index = -1;
	}
}