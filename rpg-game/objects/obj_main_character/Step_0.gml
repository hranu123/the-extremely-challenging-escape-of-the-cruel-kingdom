/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 10BD8ADF
/// @DnDArgument : "key" "vk_shift"
var l10BD8ADF_0;
l10BD8ADF_0 = keyboard_check(vk_shift);
if (l10BD8ADF_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EAA7FCD
	/// @DnDParent : 10BD8ADF
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "global.player_sprinting"
	global.player_sprinting = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6AC057F4
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 277D2912
	/// @DnDParent : 6AC057F4
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "global.player_sprinting"
	global.player_sprinting = false;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 144DCFEC
	/// @DnDParent : 6AC057F4
	/// @DnDArgument : "var" "global.health"
	/// @DnDArgument : "op" "3"
	if(global.health <= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 597332FE
		/// @DnDParent : 144DCFEC
		/// @DnDArgument : "var" "var_dead"
		/// @DnDArgument : "value" "false"
		if(var_dead == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1FF909D1
			/// @DnDParent : 597332FE
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "var_dead"
			var_dead = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 057826BB
			/// @DnDParent : 597332FE
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "global.lives"
			global.lives += -1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A25221C
			/// @DnDParent : 597332FE
			/// @DnDArgument : "var" "global.lives"
			/// @DnDArgument : "op" "2"
			if(global.lives > 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 37E23306
				/// @DnDParent : 2A25221C
				/// @DnDArgument : "expr" "global.max_health"
				/// @DnDArgument : "var" "global.health"
				global.health = global.max_health;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2219AB30
				/// @DnDParent : 2A25221C
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "var_dead"
				var_dead = false;
			
				/// @DnDAction : YoYo Games.Rooms.Restart_Room
				/// @DnDVersion : 1
				/// @DnDHash : 51B99557
				/// @DnDParent : 2A25221C
				room_restart();
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6C67FCC9
			/// @DnDParent : 597332FE
			else
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 5AB276F8
				/// @DnDParent : 6C67FCC9
				/// @DnDArgument : "room" "You_lose"
				/// @DnDSaveInfo : "room" "You_lose"
				room_goto(You_lose);
			}
		}
	}
}