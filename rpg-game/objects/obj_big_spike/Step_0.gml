/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 73946120
/// @DnDArgument : "expr" "place_meeting(x, y, obj_main_character)"
if(place_meeting(x, y, obj_main_character))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 559CBBFE
	/// @DnDParent : 73946120
	/// @DnDArgument : "var" "spike_active"
	/// @DnDArgument : "value" "false"
	if(spike_active == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31E999CF
		/// @DnDParent : 559CBBFE
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "spike_active"
		spike_active = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AC30D5D
		/// @DnDParent : 559CBBFE
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "spike_state"
		spike_state = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F0C0EDD
		/// @DnDParent : 559CBBFE
		/// @DnDArgument : "expr" "15"
		/// @DnDArgument : "var" "spike_timer"
		spike_timer = 15;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3B54D449
		/// @DnDParent : 559CBBFE
		/// @DnDArgument : "spriteind" "spr_big_spike_2"
		/// @DnDSaveInfo : "spriteind" "spr_big_spike_2"
		sprite_index = spr_big_spike_2;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E7CA302
	/// @DnDParent : 73946120
	/// @DnDArgument : "var" "spike_active"
	/// @DnDArgument : "value" "true"
	if(spike_active == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 220A7D41
		/// @DnDParent : 5E7CA302
		/// @DnDArgument : "var" "spike_timer"
		/// @DnDArgument : "op" "2"
		if(spike_timer > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 130465C8
			/// @DnDParent : 220A7D41
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spike_timer"
			spike_timer += -1;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 650CC3F5
	/// @DnDParent : 73946120
	/// @DnDArgument : "var" "spike_timer"
	/// @DnDArgument : "op" "3"
	if(spike_timer <= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F7E77CE
		/// @DnDParent : 650CC3F5
		/// @DnDArgument : "var" "spike_state"
		/// @DnDArgument : "value" "1"
		if(spike_state == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1D28691A
			/// @DnDParent : 3F7E77CE
			/// @DnDArgument : "spriteind" "spr_big_spike_3"
			/// @DnDSaveInfo : "spriteind" "spr_big_spike_3"
			sprite_index = spr_big_spike_3;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 49D7E1F3
			/// @DnDParent : 3F7E77CE
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "spike_state"
			spike_state = 2;
		}
	}
}