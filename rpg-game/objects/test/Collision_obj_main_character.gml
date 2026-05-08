/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3EEA1FE0
/// @DnDArgument : "var" "spike_can_trigger"
/// @DnDArgument : "value" "true"
if(spike_can_trigger == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 130AEBE6
	/// @DnDParent : 3EEA1FE0
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "spike_can_trigger"
	spike_can_trigger = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FCA13FC
	/// @DnDParent : 3EEA1FE0
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "spike_state"
	spike_state = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FFF16C3
	/// @DnDParent : 3EEA1FE0
	/// @DnDArgument : "expr" "15"
	/// @DnDArgument : "var" "spike_timer"
	spike_timer = 15;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1A6F52CD
	/// @DnDParent : 3EEA1FE0
	/// @DnDArgument : "spriteind" "spr_big_spike_2"
	/// @DnDSaveInfo : "spriteind" "spr_big_spike_2"
	sprite_index = spr_big_spike_2;
	image_index = 0;
}