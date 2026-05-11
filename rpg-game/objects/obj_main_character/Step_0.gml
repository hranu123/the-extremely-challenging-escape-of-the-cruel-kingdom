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
	/// @DnDHash : 61758C8B
	/// @DnDParent : 4C29707C
	/// @DnDArgument : "code" "if (damage_timer > 0)$(13_10){$(13_10)    damage_timer -= 1;$(13_10)}$(13_10)$(13_10)if (damage_timer <= 0)$(13_10){$(13_10)    var_can_take_damage = true;$(13_10)}$(13_10)$(13_10)$(13_10)if (bear_trapped)$(13_10){$(13_10)    player_can_move = false;$(13_10)$(13_10)   $(13_10)    if (var_can_take_damage == true)$(13_10)    {$(13_10)        global.health -= current_trap_damage;$(13_10)        var_can_take_damage = false;$(13_10)        damage_timer = 200;$(13_10)    }$(13_10)$(13_10)    if (keyboard_check_pressed(ord("H")))$(13_10)    {$(13_10)        bear_escape_presses -= 1;$(13_10)    }$(13_10)$(13_10)    if (bear_escape_presses <= 0)$(13_10)    {$(13_10)        bear_trapped = false;$(13_10)        player_can_move = true;$(13_10)        bear_trap_cooldown = 30;$(13_10)$(13_10)        current_bear_trap = noone;$(13_10)        current_trap_damage = 0;$(13_10)$(13_10)        audio_stop_sound(snd_heartbeat);$(13_10)    }$(13_10)}$(13_10)else$(13_10){$(13_10)    if (bear_trap_cooldown > 0)$(13_10)    {$(13_10)        bear_trap_cooldown -= 1;$(13_10)    }$(13_10)$(13_10)    if (bear_trap_cooldown <= 0)$(13_10)    {$(13_10)        if (place_meeting(x, y, obj_bear_trap_1))$(13_10)        {$(13_10)            audio_play_sound(snd_bear_trap,1,false)$(13_10)			bear_trapped = true;$(13_10)            bear_escape_presses = 10;$(13_10)            player_can_move = false;$(13_10)$(13_10)            current_bear_trap = obj_bear_trap_1;$(13_10)            current_trap_damage = 30;$(13_10)$(13_10)            damage_timer = 0;$(13_10)            var_can_take_damage = true;$(13_10)$(13_10)            audio_play_sound(snd_heartbeat, 1, true);$(13_10)        }$(13_10)        else if (place_meeting(x, y, obj_bear_trap_2))$(13_10)        {$(13_10)            audio_play_sound(snd_bear_trap,1,false)$(13_10)			bear_trapped = true;$(13_10)            bear_escape_presses = 10;$(13_10)            player_can_move = false;$(13_10)$(13_10)            current_bear_trap = obj_bear_trap_2;$(13_10)            current_trap_damage = 20;$(13_10)$(13_10)            damage_timer = 0;$(13_10)            var_can_take_damage = true;$(13_10)$(13_10)            audio_play_sound(snd_heartbeat, 1, true);$(13_10)        }$(13_10)        else$(13_10)        {$(13_10)            player_can_move = true;$(13_10)        }$(13_10)    }$(13_10)}$(13_10)"
	if (damage_timer > 0)
	{
	    damage_timer -= 1;
	}
	
	if (damage_timer <= 0)
	{
	    var_can_take_damage = true;
	}
	
	
	if (bear_trapped)
	{
	    player_can_move = false;
	
	   
	    if (var_can_take_damage == true)
	    {
	        global.health -= current_trap_damage;
	        var_can_take_damage = false;
	        damage_timer = 200;
	    }
	
	    if (keyboard_check_pressed(ord("H")))
	    {
	        bear_escape_presses -= 1;
	    }
	
	    if (bear_escape_presses <= 0)
	    {
	        bear_trapped = false;
	        player_can_move = true;
	        bear_trap_cooldown = 30;
	
	        current_bear_trap = noone;
	        current_trap_damage = 0;
	
	        audio_stop_sound(snd_heartbeat);
	    }
	}
	else
	{
	    if (bear_trap_cooldown > 0)
	    {
	        bear_trap_cooldown -= 1;
	    }
	
	    if (bear_trap_cooldown <= 0)
	    {
	        if (place_meeting(x, y, obj_bear_trap_1))
	        {
	            audio_play_sound(snd_bear_trap,1,false)
				bear_trapped = true;
	            bear_escape_presses = 10;
	            player_can_move = false;
	
	            current_bear_trap = obj_bear_trap_1;
	            current_trap_damage = 30;
	
	            damage_timer = 0;
	            var_can_take_damage = true;
	
	            audio_play_sound(snd_heartbeat, 1, true);
	        }
	        else if (place_meeting(x, y, obj_bear_trap_2))
	        {
	            audio_play_sound(snd_bear_trap,1,false)
				bear_trapped = true;
	            bear_escape_presses = 10;
	            player_can_move = false;
	
	            current_bear_trap = obj_bear_trap_2;
	            current_trap_damage = 20;
	
	            damage_timer = 0;
	            var_can_take_damage = true;
	
	            audio_play_sound(snd_heartbeat, 1, true);
	        }
	        else
	        {
	            player_can_move = true;
	        }
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
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 3BF77F5C
		/// @DnDParent : 597332FE
		/// @DnDArgument : "soundid" "snd_game_over_sound_effect"
		/// @DnDSaveInfo : "soundid" "snd_game_over_sound_effect"
		audio_play_sound(snd_game_over_sound_effect, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5D642486
		/// @DnDParent : 597332FE
		/// @DnDArgument : "soundid" "snd_heartbeat"
		/// @DnDSaveInfo : "soundid" "snd_heartbeat"
		audio_stop_sound(snd_heartbeat);
	
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0F0CDBF0
		/// @DnDParent : 597332FE
		/// @DnDArgument : "soundid" "snd_alarm"
		/// @DnDSaveInfo : "soundid" "snd_alarm"
		audio_stop_sound(snd_alarm);
	
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 565EB3F6
		/// @DnDParent : 597332FE
		/// @DnDArgument : "soundid" "snd_death"
		/// @DnDSaveInfo : "soundid" "snd_death"
		audio_stop_sound(snd_death);
	
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
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 49A05325
			/// @DnDParent : 2A25221C
			/// @DnDArgument : "soundid" "snd_death"
			/// @DnDSaveInfo : "soundid" "snd_death"
			audio_play_sound(snd_death, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 422C4825
			/// @DnDParent : 2A25221C
			/// @DnDArgument : "soundid" "snd_game_over_sound_effect"
			/// @DnDSaveInfo : "soundid" "snd_game_over_sound_effect"
			audio_stop_sound(snd_game_over_sound_effect);
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 644572BA
			/// @DnDParent : 2A25221C
			/// @DnDArgument : "soundid" "snd_heartbeat"
			/// @DnDSaveInfo : "soundid" "snd_heartbeat"
			audio_stop_sound(snd_heartbeat);
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 3D4DF82A
			/// @DnDParent : 2A25221C
			/// @DnDArgument : "soundid" "snd_alarm"
			/// @DnDSaveInfo : "soundid" "snd_alarm"
			audio_stop_sound(snd_alarm);
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 1ACCAE4B
			/// @DnDParent : 2A25221C
			/// @DnDArgument : "soundid" "snd_level_1_background_music"
			/// @DnDSaveInfo : "soundid" "snd_level_1_background_music"
			audio_stop_sound(snd_level_1_background_music);
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 00890E6D
			/// @DnDParent : 2A25221C
			/// @DnDArgument : "soundid" "snd_level_2_background_music"
			/// @DnDSaveInfo : "soundid" "snd_level_2_background_music"
			audio_stop_sound(snd_level_2_background_music);
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 629E9A78
			/// @DnDParent : 2A25221C
			/// @DnDArgument : "soundid" "snd_enter_kingdom"
			/// @DnDSaveInfo : "soundid" "snd_enter_kingdom"
			audio_stop_sound(snd_enter_kingdom);
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
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 20A611FA
				/// @DnDParent : 1C73FF8C
				/// @DnDArgument : "soundid" "snd_alarm"
				/// @DnDSaveInfo : "soundid" "snd_alarm"
				audio_stop_sound(snd_alarm);
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 1260CCF3
				/// @DnDParent : 1C73FF8C
				/// @DnDArgument : "soundid" "snd_heartbeat"
				/// @DnDSaveInfo : "soundid" "snd_heartbeat"
				audio_stop_sound(snd_heartbeat);
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 7A11008A
				/// @DnDParent : 1C73FF8C
				/// @DnDArgument : "soundid" "snd_level_1_background_music"
				/// @DnDSaveInfo : "soundid" "snd_level_1_background_music"
				audio_stop_sound(snd_level_1_background_music);
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 7070954D
				/// @DnDParent : 1C73FF8C
				/// @DnDArgument : "soundid" "snd_level_2_background_music"
				/// @DnDSaveInfo : "soundid" "snd_level_2_background_music"
				audio_stop_sound(snd_level_2_background_music);
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 19D57BFD
				/// @DnDParent : 1C73FF8C
				/// @DnDArgument : "soundid" "snd_enter_kingdom"
				/// @DnDSaveInfo : "soundid" "snd_enter_kingdom"
				audio_stop_sound(snd_enter_kingdom);
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
				/// @DnDArgument : "room" "You_lose"
				/// @DnDSaveInfo : "room" "You_lose"
				room_goto(You_lose);
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 44A26126
				/// @DnDParent : 1EB36259
				/// @DnDArgument : "soundid" "snd_alarm"
				/// @DnDSaveInfo : "soundid" "snd_alarm"
				audio_stop_sound(snd_alarm);
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 7C334665
				/// @DnDParent : 1EB36259
				/// @DnDArgument : "soundid" "snd_heartbeat"
				/// @DnDSaveInfo : "soundid" "snd_heartbeat"
				audio_stop_sound(snd_heartbeat);
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 55BFDEA6
				/// @DnDParent : 1EB36259
				/// @DnDArgument : "soundid" "snd_level_1_background_music"
				/// @DnDSaveInfo : "soundid" "snd_level_1_background_music"
				audio_stop_sound(snd_level_1_background_music);
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 325E6627
				/// @DnDParent : 1EB36259
				/// @DnDArgument : "soundid" "snd_level_2_background_music"
				/// @DnDSaveInfo : "soundid" "snd_level_2_background_music"
				audio_stop_sound(snd_level_2_background_music);
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 6E20041D
				/// @DnDParent : 1EB36259
				/// @DnDArgument : "soundid" "snd_enter_kingdom"
				/// @DnDSaveInfo : "soundid" "snd_enter_kingdom"
				audio_stop_sound(snd_enter_kingdom);
			}
		}
	}
}