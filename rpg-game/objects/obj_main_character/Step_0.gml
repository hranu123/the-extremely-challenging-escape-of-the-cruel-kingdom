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
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 144DCFEC
/// @DnDArgument : "var" "global.health"
/// @DnDArgument : "op" "3"
if(global.health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 597332FE
	/// @DnDParent : 144DCFEC
	/// @DnDArgument : "var" "global.var_dead"
	/// @DnDArgument : "value" "false"
	if(global.var_dead == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1FF909D1
		/// @DnDParent : 597332FE
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "global.var_dead"
		global.var_dead = true;
	
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
			/// @DnDArgument : "var" "global.var_dead"
			global.var_dead = false;
		
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
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1C73FF8C
			/// @DnDParent : 6C67FCC9
			/// @DnDArgument : "var" "global.death_cause"
			/// @DnDArgument : "value" ""knight""
			if(global.death_cause == "knight")
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 04F92B6C
				/// @DnDParent : 1C73FF8C
				/// @DnDArgument : "room" "You_lose_guard"
				/// @DnDSaveInfo : "room" "You_lose_guard"
				room_goto(You_lose_guard);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1EB36259
			/// @DnDParent : 6C67FCC9
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 42C705A8
				/// @DnDParent : 1EB36259
				/// @DnDArgument : "var" "global.death_cause"
				/// @DnDArgument : "value" ""spike""
				if(global.death_cause == "spike")
				{
					/// @DnDAction : YoYo Games.Rooms.Go_To_Room
					/// @DnDVersion : 1
					/// @DnDHash : 4116D360
					/// @DnDParent : 42C705A8
					/// @DnDArgument : "room" "You_lose"
					/// @DnDSaveInfo : "room" "You_lose"
					room_goto(You_lose);
				
					/// @DnDAction : YoYo Games.Common.Exit_Event
					/// @DnDVersion : 1
					/// @DnDHash : 544142C7
					/// @DnDParent : 42C705A8
					exit;
				
					/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
					/// @DnDVersion : 1
					/// @DnDHash : 0FA56205
					/// @DnDParent : 42C705A8
					/// @DnDArgument : "key" "ord("R")"
					var l0FA56205_0;
					l0FA56205_0 = keyboard_check_pressed(ord("R"));
					if (l0FA56205_0)
					{
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7C156160
						/// @DnDParent : 0FA56205
						/// @DnDArgument : "var" "global.r_pressed_once"
						/// @DnDArgument : "value" "true"
						if(global.r_pressed_once == true)
						{
							/// @DnDAction : YoYo Games.Rooms.Go_To_Room
							/// @DnDVersion : 1
							/// @DnDHash : 753EDB06
							/// @DnDParent : 7C156160
							/// @DnDArgument : "room" "Controls_lobby"
							/// @DnDSaveInfo : "room" "Controls_lobby"
							room_goto(Controls_lobby);
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 2C9A4CDC
						/// @DnDParent : 0FA56205
						else
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 19F48AFC
							/// @DnDParent : 2C9A4CDC
							/// @DnDArgument : "expr" "true"
							/// @DnDArgument : "var" "global.r_pressed_once"
							global.r_pressed_once = true;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5B7E9428
							/// @DnDParent : 2C9A4CDC
							/// @DnDArgument : "expr" "global.r_timer = room_speed * 1"
							/// @DnDArgument : "var" "global.r_timer"
							global.r_timer = global.r_timer = room_speed * 1;
						
							/// @DnDAction : YoYo Games.Rooms.Restart_Room
							/// @DnDVersion : 1
							/// @DnDHash : 44B6EF3C
							/// @DnDParent : 2C9A4CDC
							room_restart();
						
							/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 631DAB3B
							/// @DnDParent : 2C9A4CDC
							/// @DnDArgument : "var" "global.r_pressed_once"
							/// @DnDArgument : "value" "true"
							if(global.r_pressed_once == true)
							{
								/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
								/// @DnDVersion : 1
								/// @DnDHash : 2BD48170
								/// @DnDParent : 631DAB3B
								/// @DnDArgument : "key" "ord("R")"
								/// @DnDArgument : "not" "1"
								var l2BD48170_0;
								l2BD48170_0 = keyboard_check_pressed(ord("R"));
								if (!l2BD48170_0)
								{
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 418C1578
									/// @DnDParent : 2BD48170
									/// @DnDArgument : "expr" "-1"
									/// @DnDArgument : "expr_relative" "1"
									/// @DnDArgument : "var" "global.r_timer"
									global.r_timer += -1;
								
									/// @DnDAction : YoYo Games.Common.If_Variable
									/// @DnDVersion : 1
									/// @DnDHash : 29A6F101
									/// @DnDParent : 2BD48170
									/// @DnDArgument : "var" "global.r_timer"
									/// @DnDArgument : "op" "3"
									if(global.r_timer <= 0)
									{
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 73755BE3
										/// @DnDParent : 29A6F101
										/// @DnDArgument : "expr" "false"
										/// @DnDArgument : "var" "global.r_pressed_once"
										global.r_pressed_once = false;
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71D4D275
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.r_timer"
global.r_timer += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D0F4742
/// @DnDArgument : "var" "global.r_timer"
/// @DnDArgument : "op" "3"
if(global.r_timer <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DCD9BE2
	/// @DnDParent : 6D0F4742
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "global.r_pressed_once"
	global.r_pressed_once = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34EA2E4C
	/// @DnDParent : 6D0F4742
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.r_timer"
	global.r_timer += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4AC15554
	/// @DnDParent : 6D0F4742
	/// @DnDArgument : "var" "global.r_timer"
	/// @DnDArgument : "op" "3"
	if(global.r_timer <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A1B5AEB
		/// @DnDParent : 4AC15554
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "global.r_pressed_once"
		global.r_pressed_once = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C0769E1
		/// @DnDParent : 4AC15554
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.r_timer"
		global.r_timer += -1;
	}
}