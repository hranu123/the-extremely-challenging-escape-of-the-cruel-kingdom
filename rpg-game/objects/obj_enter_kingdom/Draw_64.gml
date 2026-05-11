/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5422D91D
/// @DnDArgument : "code" "$(13_10)draw_set_font(fnt_intro_text);$(13_10)draw_set_alpha(var_intro_alpha);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_middle);$(13_10)$(13_10)function draw_blue_black_text_centered(_text, _center_x, _y)$(13_10){$(13_10)    var text_w = string_width(_text);$(13_10)    var current_x = _center_x - (text_w / 2);$(13_10)    var letter_count = 0;$(13_10)$(13_10)    for (var i = 1; i <= string_length(_text); i++)$(13_10)    {$(13_10)        var letter = string_char_at(_text, i);$(13_10)$(13_10)      $(13_10)        if (letter != " ")$(13_10)        {$(13_10)            letter_count++;$(13_10)$(13_10)            if (letter_count mod 2 == 1)$(13_10)            {$(13_10)                draw_set_colour(make_colour_rgb(0, 0, 255)); $(13_10)            }$(13_10)            else$(13_10)            {$(13_10)                draw_set_colour(c_black); $(13_10)            }$(13_10)        }$(13_10)$(13_10)        draw_text(current_x, _y, letter);$(13_10)        current_x += string_width(letter);$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)var center_x = display_get_gui_width() / 2;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (var_intro_timer >= 50)$(13_10){$(13_10)    draw_blue_black_text_centered("Hello Player!", center_x, 210);$(13_10)}$(13_10)$(13_10)if (var_intro_timer >= 100)$(13_10){$(13_10)    draw_blue_black_text_centered("Enter kingdom by pressing v when in contact with door", center_x, 280);$(13_10)}$(13_10)$(13_10)$(13_10)draw_set_colour(c_black);$(13_10)draw_set_alpha(1);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);"

draw_set_font(fnt_intro_text);
draw_set_alpha(var_intro_alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

function draw_blue_black_text_centered(_text, _center_x, _y)
{
    var text_w = string_width(_text);
    var current_x = _center_x - (text_w / 2);
    var letter_count = 0;

    for (var i = 1; i <= string_length(_text); i++)
    {
        var letter = string_char_at(_text, i);

      
        if (letter != " ")
        {
            letter_count++;

            if (letter_count mod 2 == 1)
            {
                draw_set_colour(make_colour_rgb(0, 0, 255)); 
            }
            else
            {
                draw_set_colour(c_black); 
            }
        }

        draw_text(current_x, _y, letter);
        current_x += string_width(letter);
    }
}




var center_x = display_get_gui_width() / 2;




if (var_intro_timer >= 50)
{
    draw_blue_black_text_centered("Hello Player!", center_x, 210);
}

if (var_intro_timer >= 100)
{
    draw_blue_black_text_centered("Enter kingdom by pressing v when in contact with door", center_x, 280);
}


draw_set_colour(c_black);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);