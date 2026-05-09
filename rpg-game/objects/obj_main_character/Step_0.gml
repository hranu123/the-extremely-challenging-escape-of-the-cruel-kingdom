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
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 073A01CF
	/// @DnDParent : 4C29707C
	/// @DnDArgument : "code" "if (bear_trapped)$(13_10){$(13_10)    player_can_move = false;$(13_10)$(13_10)    if (keyboard_check_pressed(ord("H")))$(13_10)    {$(13_10)        bear_escape_presses -= 1;$(13_10)    }$(13_10)$(13_10)    if (bear_escape_presses <= 0)$(13_10)    {$(13_10)        bear_trapped = false;$(13_10)        player_can_move = true;$(13_10)        bear_trap_cooldown = 30;$(13_10)$(13_10)        audio_stop_sound(snd_heartbeat);$(13_10)    }$(13_10)}$(13_10)else$(13_10){$(13_10)    if (bear_trap_cooldown > 0)$(13_10)    {$(13_10)        bear_trap_cooldown -= 1;$(13_10)    }$(13_10)$(13_10)    if (bear_trap_cooldown <= 0 && place_meeting(x, y, obj_bear_trap_1))$(13_10)    {$(13_10)        bear_trapped = true;$(13_10)        bear_escape_presses = 10;$(13_10)        player_can_move = false;$(13_10)$(13_10)        audio_play_sound(snd_heartbeat, 1, true);$(13_10)    }$(13_10)    else$(13_10)    {$(13_10)        player_can_move = true;$(13_10)    }$(13_10)}"
	if (bear_trapped)
	{
	    player_can_move = false;
	
	    if (keyboard_check_pressed(ord("H")))
	    {
	        bear_escape_presses -= 1;
	    }
	
	    if (bear_escape_presses <= 0)
	    {
	        bear_trapped = false;
	        player_can_move = true;
	        bear_trap_cooldown = 30;
	
	        audio_stop_sound(snd_heartbeat);
	    }
	}
	else
	{
	    if (bear_trap_cooldown > 0)
	    {
	        bear_trap_cooldown -= 1;
	    }
	
	    if (bear_trap_cooldown <= 0 && place_meeting(x, y, obj_bear_trap_1))
	    {
	        bear_trapped = true;
	        bear_escape_presses = 10;
	        player_can_move = false;
	
	        audio_play_sound(snd_heartbeat, 1, true);
	    }
	    else
	    {
	        player_can_move = true;
	    }
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7811D543
/// @DnDArgument : "expr" "instance_place(x, y, obj_bear_trap_1)"
if(instance_place(x, y, obj_bear_trap_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E805A40
	/// @DnDParent : 7811D543
	/// @DnDArgument : "var" "var_can_take_damage"
	/// @DnDArgument : "value" "true"
	if(var_can_take_damage == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1E25EC9C
		/// @DnDParent : 4E805A40
		/// @DnDArgument : "expr" "-20"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.health"
		global.health += -20;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 297A4B38
		/// @DnDParent : 4E805A40
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "var_can_take_damage"
		var_can_take_damage = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49003324
		/// @DnDParent : 4E805A40
		/// @DnDArgument : "expr" "175"
		/// @DnDArgument : "var" "damage_timer"
		damage_timer = 175;
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
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 644572BA
			/// @DnDParent : 2A25221C
			/// @DnDArgument : "soundid" "snd_heartbeat"
			/// @DnDSaveInfo : "soundid" "snd_heartbeat"
			audio_stop_sound(snd_heartbeat);
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
				/// @DnDArgument : "room" "Lobby"
				/// @DnDSaveInfo : "room" "Lobby"
				room_goto(Lobby);
			}
		}
	}
}