/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DF37A30
/// @DnDArgument : "code" "$(13_10)var mx = device_mouse_x_to_gui(0);$(13_10)var my = device_mouse_y_to_gui(0);$(13_10)$(13_10)$(13_10)var hovering = point_in_rectangle($(13_10)    mx,$(13_10)    my,$(13_10)    arrow_x,$(13_10)    arrow_y,$(13_10)    arrow_x + arrow_w,$(13_10)    arrow_y + arrow_h$(13_10));$(13_10)$(13_10)$(13_10)if (hovering && mouse_check_button_pressed(mb_left))$(13_10){$(13_10)    room_goto(Lobby);$(13_10)	audio_play_sound(snd_mouse_click, 1, false);$(13_10)}$(13_10)"

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


var hovering = point_in_rectangle(
    mx,
    my,
    arrow_x,
    arrow_y,
    arrow_x + arrow_w,
    arrow_y + arrow_h
);


if (hovering && mouse_check_button_pressed(mb_left))
{
    room_goto(Lobby);
	audio_play_sound(snd_mouse_click, 1, false);
}