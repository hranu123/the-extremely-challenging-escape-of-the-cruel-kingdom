/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 73946120
/// @DnDArgument : "expr" "place_meeting(x, y, obj_main_character)"
if(place_meeting(x, y, obj_main_character))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34A9AE9C
	/// @DnDParent : 73946120
	/// @DnDArgument : "var" "reset_timer"
	reset_timer = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 21C33140
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 552E3B12
	/// @DnDParent : 21C33140
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "reset_timer"
	reset_timer += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65312A98
	/// @DnDParent : 21C33140
	/// @DnDArgument : "var" "reset_timer"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "10"
	if(reset_timer >= 10)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 32165E05
		/// @DnDParent : 65312A98
		/// @DnDArgument : "var" "spike_active"
		/// @DnDArgument : "value" "false"
		if(spike_active == false)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3AB8CD83
			/// @DnDParent : 32165E05
			/// @DnDArgument : "var" "spike_state"
			if(spike_state == 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7F91180B
				/// @DnDParent : 3AB8CD83
				/// @DnDArgument : "var" "can_reactivate"
				can_reactivate = 0;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 7CA13386
				/// @DnDParent : 3AB8CD83
				/// @DnDArgument : "expr" "place_meeting(x, y, obj_main_character)"
				if(place_meeting(x, y, obj_main_character))
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7D2F6DBE
					/// @DnDParent : 7CA13386
					/// @DnDArgument : "var" "spike_active"
					/// @DnDArgument : "value" "false"
					if(spike_active == false)
					{
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 420C45E9
						/// @DnDParent : 7D2F6DBE
						/// @DnDArgument : "var" "can_reactivate"
						/// @DnDArgument : "value" "true"
						if(can_reactivate == true)
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 399292F5
							/// @DnDParent : 420C45E9
							/// @DnDArgument : "expr" "true"
							/// @DnDArgument : "var" "spike_active"
							spike_active = true;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 6E5002E1
							/// @DnDParent : 420C45E9
							/// @DnDArgument : "expr" "false"
							/// @DnDArgument : "var" "can_reactivate"
							can_reactivate = false;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5A0366EF
							/// @DnDParent : 420C45E9
							/// @DnDArgument : "expr" "1"
							/// @DnDArgument : "var" "spike_state"
							spike_state = 1;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 1850847C
							/// @DnDParent : 420C45E9
							/// @DnDArgument : "expr" "15"
							/// @DnDArgument : "var" "spike_timer"
							spike_timer = 15;
						
							/// @DnDAction : YoYo Games.Instances.Set_Sprite
							/// @DnDVersion : 1
							/// @DnDHash : 0A2C4FCA
							/// @DnDParent : 420C45E9
							/// @DnDArgument : "spriteind" "spr_big_spike_2"
							/// @DnDSaveInfo : "spriteind" "spr_big_spike_2"
							sprite_index = spr_big_spike_2;
							image_index = 0;
						
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 3A63C9B4
							/// @DnDParent : 420C45E9
							/// @DnDArgument : "var" "reset_timer"
							/// @DnDArgument : "op" "4"
							/// @DnDArgument : "value" "60"
							if(reset_timer >= 60)
							{
								/// @DnDAction : YoYo Games.Common.If_Variable
								/// @DnDVersion : 1
								/// @DnDHash : 19B50527
								/// @DnDParent : 3A63C9B4
								/// @DnDArgument : "var" "spike_active"
								/// @DnDArgument : "value" "false"
								if(spike_active == false)
								{
								
								}
							}
						}
					}
				}
			}
		}
	}
}