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
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0883305F
			/// @DnDParent : 3F7E77CE
			/// @DnDArgument : "expr" "15"
			/// @DnDArgument : "var" "spike_timer"
			spike_timer = 15;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 65B7BCBF
		/// @DnDParent : 650CC3F5
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1434D4CD
			/// @DnDParent : 65B7BCBF
			/// @DnDArgument : "var" "spike_state"
			/// @DnDArgument : "value" "2"
			if(spike_state == 2)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 7E9849B7
				/// @DnDParent : 1434D4CD
				/// @DnDArgument : "spriteind" "spr_big_spike_4"
				/// @DnDSaveInfo : "spriteind" "spr_big_spike_4"
				sprite_index = spr_big_spike_4;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 36ED24D8
				/// @DnDParent : 1434D4CD
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "var" "spike_state"
				spike_state = 3;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 393D472D
				/// @DnDParent : 1434D4CD
				/// @DnDArgument : "expr" "50"
				/// @DnDArgument : "var" "spike_timer"
				spike_timer = 50;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3B5B9606
			/// @DnDParent : 65B7BCBF
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 76E54917
				/// @DnDParent : 3B5B9606
				/// @DnDArgument : "var" "spike_state"
				/// @DnDArgument : "value" "3"
				if(spike_state == 3)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 43A67F3C
					/// @DnDParent : 76E54917
					/// @DnDArgument : "spriteind" "spr_big_spike_1"
					/// @DnDSaveInfo : "spriteind" "spr_big_spike_1"
					sprite_index = spr_big_spike_1;
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 747DFA46
					/// @DnDParent : 76E54917
					/// @DnDArgument : "var" "spike_state"
					spike_state = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5EFCEAA6
					/// @DnDParent : 76E54917
					/// @DnDArgument : "var" "spike_timer"
					spike_timer = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 56B60087
					/// @DnDParent : 76E54917
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "spike_active"
					spike_active = false;
				}
			}
		}
	}
}