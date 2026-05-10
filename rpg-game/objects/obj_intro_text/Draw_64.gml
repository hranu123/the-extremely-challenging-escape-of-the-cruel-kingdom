/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5422D91D
/// @DnDArgument : "code" "$(13_10)draw_set_font(fnt_intro_text);$(13_10)draw_set_alpha(var_intro_alpha);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_middle);$(13_10)$(13_10)function draw_gold_white_text_centered(_text, _center_x, _y)$(13_10){$(13_10)    var text_w = string_width(_text);$(13_10)    var current_x = _center_x - (text_w / 2);$(13_10)    var letter_count = 0;$(13_10)$(13_10)    for (var i = 1; i <= string_length(_text); i++)$(13_10)    {$(13_10)        var letter = string_char_at(_text, i);$(13_10)$(13_10)      $(13_10)        if (letter != " ")$(13_10)        {$(13_10)            letter_count++;$(13_10)$(13_10)            if (letter_count mod 2 == 1)$(13_10)            {$(13_10)                draw_set_colour(make_colour_rgb(184, 134, 11)); $(13_10)            }$(13_10)            else$(13_10)            {$(13_10)                draw_set_colour(c_white); $(13_10)            }$(13_10)        }$(13_10)$(13_10)        draw_text(current_x, _y, letter);$(13_10)        current_x += string_width(letter);$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)var center_x = display_get_gui_width() / 2;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (var_intro_timer >= 50)$(13_10){$(13_10)    draw_gold_white_text_centered("Welcome to the cruel castle!", center_x, 210);$(13_10)}$(13_10)$(13_10)if (var_intro_timer >= 150)$(13_10){$(13_10)    draw_gold_white_text_centered("Are you capable of helping your brother escape from", center_x, 280);$(13_10)}$(13_10)$(13_10)if (var_intro_timer >= 250)$(13_10){$(13_10)    draw_gold_white_text_centered("The Minotaur King, Horrible Harold III, his knights, and the Queen,", center_x, 350);$(13_10)}$(13_10)$(13_10)if (var_intro_timer >= 350)$(13_10){$(13_10)    draw_gold_white_text_centered("or will you be captured like previous visitors", center_x, 420);$(13_10)}$(13_10)$(13_10)if (var_intro_timer >= 450)$(13_10){$(13_10)    draw_gold_white_text_centered("who attempted to save their friends!!!", center_x, 490);$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)draw_set_colour(c_white);$(13_10)draw_set_alpha(1);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);"

draw_set_font(fnt_intro_text);
draw_set_alpha(var_intro_alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

function draw_gold_white_text_centered(_text, _center_x, _y)
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
                draw_set_colour(make_colour_rgb(184, 134, 11)); 
            }
            else
            {
                draw_set_colour(c_white); 
            }
        }

        draw_text(current_x, _y, letter);
        current_x += string_width(letter);
    }
}




var center_x = display_get_gui_width() / 2;




if (var_intro_timer >= 50)
{
    draw_gold_white_text_centered("Welcome to the cruel castle!", center_x, 210);
}

if (var_intro_timer >= 150)
{
    draw_gold_white_text_centered("Are you capable of helping your brother escape from", center_x, 280);
}

if (var_intro_timer >= 250)
{
    draw_gold_white_text_centered("The Minotaur King, Horrible Harold III, his knights, and the Queen,", center_x, 350);
}

if (var_intro_timer >= 350)
{
    draw_gold_white_text_centered("or will you be captured like previous visitors", center_x, 420);
}

if (var_intro_timer >= 450)
{
    draw_gold_white_text_centered("who attempted to save their friends!!!", center_x, 490);
}




draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);