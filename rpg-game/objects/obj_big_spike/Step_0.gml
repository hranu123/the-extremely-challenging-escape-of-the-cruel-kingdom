/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 152E429E
/// @DnDArgument : "var" "spike_timer"
/// @DnDArgument : "op" "2"
if(spike_timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C25C92F
	/// @DnDParent : 152E429E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "spike_timer"
	spike_timer = -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63ADE436
/// @DnDArgument : "var" "spike_timer"
/// @DnDArgument : "op" "3"
if(spike_timer <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12984BF5
	/// @DnDParent : 63ADE436
	/// @DnDArgument : "var" "spike_state"
	/// @DnDArgument : "value" "1"
	if(spike_state == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3152F0E3
		/// @DnDParent : 12984BF5
		/// @DnDArgument : "spriteind" "spr_big_spike_3"
		/// @DnDSaveInfo : "spriteind" "spr_big_spike_3"
		sprite_index = spr_big_spike_3;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0DD6F563
		/// @DnDParent : 12984BF5
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "spike_state"
		spike_state = 2;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2558494E
		/// @DnDParent : 12984BF5
		/// @DnDArgument : "expr" "15"
		/// @DnDArgument : "var" "spike_timer"
		spike_timer = 15;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 441B02F1
	/// @DnDParent : 63ADE436
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 681333F9
		/// @DnDParent : 441B02F1
		/// @DnDArgument : "var" "spike_state"
		/// @DnDArgument : "value" "2"
		if(spike_state == 2)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1EFF844C
			/// @DnDParent : 681333F9
			/// @DnDArgument : "spriteind" "spr_big_spike_4"
			/// @DnDSaveInfo : "spriteind" "spr_big_spike_4"
			sprite_index = spr_big_spike_4;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 05727FFA
			/// @DnDParent : 681333F9
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "spike_state"
			spike_state = 3;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75AB5385
			/// @DnDParent : 681333F9
			/// @DnDArgument : "expr" "15"
			/// @DnDArgument : "var" "spike_timer"
			spike_timer = 15;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5E4844AE
		/// @DnDParent : 441B02F1
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 13CBE897
			/// @DnDParent : 5E4844AE
			/// @DnDArgument : "var" "spike_state"
			/// @DnDArgument : "value" "3"
			if(spike_state == 3)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 5F8ED13C
				/// @DnDParent : 13CBE897
				/// @DnDArgument : "spriteind" "spr_big_spike_1"
				/// @DnDSaveInfo : "spriteind" "spr_big_spike_1"
				sprite_index = spr_big_spike_1;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4A0E5268
				/// @DnDParent : 13CBE897
				/// @DnDArgument : "var" "spike_state"
				spike_state = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2855B1F0
				/// @DnDParent : 13CBE897
				/// @DnDArgument : "var" "spike_timer"
				spike_timer = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 366FAF74
				/// @DnDParent : 13CBE897
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "spike_can_trigger"
				spike_can_trigger = true;
			}
		}
	}
}