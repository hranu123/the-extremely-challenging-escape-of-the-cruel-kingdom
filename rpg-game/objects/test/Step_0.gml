/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 441F291C
/// @DnDArgument : "var" "damage_timer"
/// @DnDArgument : "op" "2"
if(damage_timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CA59A7A
	/// @DnDParent : 441F291C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "damage_timer"
	damage_timer += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22B49098
/// @DnDArgument : "var" "damage_timer"
/// @DnDArgument : "op" "3"
if(damage_timer <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CAFFCA9
	/// @DnDParent : 22B49098
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "var_can_take_damage"
	var_can_take_damage = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 32ED1CD9
/// @DnDArgument : "expr" "instance_place(x, y, obj_big_spike)"
if(instance_place(x, y, obj_big_spike))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D7A53E4
	/// @DnDParent : 32ED1CD9
	/// @DnDArgument : "var" "var_can_take_damage"
	/// @DnDArgument : "value" "true"
	if(var_can_take_damage == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41B81EDF
		/// @DnDParent : 6D7A53E4
		/// @DnDArgument : "expr" "-25"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.health"
		global.health += -25;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36A738C8
		/// @DnDParent : 6D7A53E4
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "var_can_take_damage"
		var_can_take_damage = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16142728
		/// @DnDParent : 6D7A53E4
		/// @DnDArgument : "expr" "50"
		/// @DnDArgument : "var" "damage_timer"
		damage_timer = 50;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4C29707C
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2062AE0F
	/// @DnDParent : 4C29707C
	/// @DnDArgument : "expr" "instance_place(x, y, obj_bear_trap_1)"
	if(instance_place(x, y, obj_bear_trap_1))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3418E7E3
		/// @DnDParent : 2062AE0F
		/// @DnDArgument : "expr" "!bear_trapped"
		if(!bear_trapped)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 646553A2
			/// @DnDParent : 3418E7E3
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "bear_trapped"
			bear_trapped = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4AFD7EE6
			/// @DnDParent : 3418E7E3
			/// @DnDArgument : "expr" "5"
			/// @DnDArgument : "var" "bear_escape_presses"
			bear_escape_presses = 5;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2170BAD9
			/// @DnDParent : 3418E7E3
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "player_can_move"
			player_can_move = false;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 656F5C77
		/// @DnDParent : 2062AE0F
		/// @DnDArgument : "var" "bear_trapped"
		/// @DnDArgument : "value" "true"
		if(bear_trapped == true)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 3934A4D0
			/// @DnDParent : 656F5C77
			/// @DnDArgument : "key" "ord("H")"
			var l3934A4D0_0;
			l3934A4D0_0 = keyboard_check_pressed(ord("H"));
			if (l3934A4D0_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 63E4BBDF
				/// @DnDParent : 3934A4D0
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "bear_escape_presses"
				bear_escape_presses += -1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 752DE972
				/// @DnDParent : 3934A4D0
				/// @DnDArgument : "var" "bear_escape_presses"
				/// @DnDArgument : "op" "3"
				if(bear_escape_presses <= 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2281232B
					/// @DnDParent : 752DE972
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "bear_trapped"
					bear_trapped = false;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 54346676
					/// @DnDParent : 752DE972
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "player_can_move"
					player_can_move = true;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1ADF2574
		/// @DnDParent : 2062AE0F
		/// @DnDArgument : "var" "var_can_take_damage"
		/// @DnDArgument : "value" "true"
		if(var_can_take_damage == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46E7EA23
			/// @DnDParent : 1ADF2574
			/// @DnDArgument : "expr" "-50"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "global.health"
			global.health += -50;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C2A27E9
			/// @DnDParent : 1ADF2574
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "var_can_take_damage"
			var_can_take_damage = false;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 27E57752
			/// @DnDParent : 1ADF2574
			/// @DnDArgument : "expr" "100"
			/// @DnDArgument : "var" "damage_timer"
			damage_timer = 100;
		}
	}
}

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
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 4116D360
				/// @DnDParent : 1EB36259
				/// @DnDArgument : "room" "Controls_lobby"
				/// @DnDSaveInfo : "room" "Controls_lobby"
				room_goto(Controls_lobby);
			}
		}
	}
}