/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 080DE5C7
/// @DnDArgument : "code" "player_touching_door = place_meeting(x, y, obj_main_character);$(13_10)$(13_10)$(13_10)$(13_10)if (access_denied_timer > 0)$(13_10){$(13_10)    access_denied_timer -= 1;$(13_10)}$(13_10)$(13_10)$(13_10)if (player_touching_door)$(13_10){$(13_10)    if (!door_sequence_started)$(13_10)    {$(13_10)        if (keyboard_check_pressed(ord("V")))$(13_10)        {$(13_10)           $(13_10)            if (global.alarm_active == true)$(13_10)            {$(13_10)                access_denied_timer = 120;$(13_10)            }$(13_10)            else$(13_10)            {$(13_10)              $(13_10)                door_sequence_started = true;$(13_10)$(13_10)                transport_timer = 30;$(13_10)$(13_10)                alarm[0] = 30;$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)}$(13_10)"
player_touching_door = place_meeting(x, y, obj_main_character);



if (access_denied_timer > 0)
{
    access_denied_timer -= 1;
}


if (player_touching_door)
{
    if (!door_sequence_started)
    {
        if (keyboard_check_pressed(ord("V")))
        {
           
            if (global.alarm_active == true)
            {
                access_denied_timer = 120;
            }
            else
            {
              
                door_sequence_started = true;

                transport_timer = 30;

                alarm[0] = 30;
            }
        }
    }
}