/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 60A96802
/// @DnDArgument : "expr" "(direction >= 315 || direction < 45) && sprite_index != spr_minotaur_king_right"
if((direction >= 315 || direction < 45) && sprite_index != spr_minotaur_king_right)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6C5F8942
	/// @DnDParent : 60A96802
	/// @DnDArgument : "spriteind" "spr_minotaur_king_right"
	/// @DnDSaveInfo : "spriteind" "spr_minotaur_king_right"
	sprite_index = spr_minotaur_king_right;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0201541E
/// @DnDArgument : "expr" "direction >= 135 && direction < 225 && sprite_index != spr_minotaur_king_left"
if(direction >= 135 && direction < 225 && sprite_index != spr_minotaur_king_left)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7A1A3309
	/// @DnDParent : 0201541E
	/// @DnDArgument : "spriteind" "spr_minotaur_king_left"
	/// @DnDSaveInfo : "spriteind" "spr_minotaur_king_left"
	sprite_index = spr_minotaur_king_left;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 516B4028
/// @DnDArgument : "expr" "direction >= 225 && direction < 315 && sprite_index != spr_minotaur_king_down"
if(direction >= 225 && direction < 315 && sprite_index != spr_minotaur_king_down)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 57733426
	/// @DnDParent : 516B4028
	/// @DnDArgument : "spriteind" "spr_minotaur_king_down"
	/// @DnDSaveInfo : "spriteind" "spr_minotaur_king_down"
	sprite_index = spr_minotaur_king_down;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 740FC73E
/// @DnDArgument : "expr" "direction >= 45 && direction < 135 && sprite_index != spr_minotaur_king_up"
if(direction >= 45 && direction < 135 && sprite_index != spr_minotaur_king_up)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 44B77427
	/// @DnDParent : 740FC73E
	/// @DnDArgument : "spriteind" "spr_minotaur_king_up"
	/// @DnDSaveInfo : "spriteind" "spr_minotaur_king_up"
	sprite_index = spr_minotaur_king_up;
	image_index = 0;
}