/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5422D91D
/// @DnDArgument : "code" "draw_set_font(fnt_goal_of_game);$(13_10)draw_set_alpha(var_intro_alpha);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)$(13_10)function draw_gold_black_text_centered(_text, _center_x, _y)$(13_10){$(13_10)    var text_w = string_width(_text);$(13_10)    var current_x = _center_x - (text_w / 2);$(13_10)    var letter_count = 0;$(13_10)$(13_10)    for (var i = 1; i <= string_length(_text); i++)$(13_10)    {$(13_10)        var letter = string_char_at(_text, i);$(13_10)$(13_10)      $(13_10)        if (letter != " ")$(13_10)        {$(13_10)            letter_count++;$(13_10)$(13_10)            if (letter_count mod 2 == 1)$(13_10)            {$(13_10)                draw_set_colour(make_colour_rgb(184, 134, 11)); $(13_10)            }$(13_10)            else$(13_10)            {$(13_10)                draw_set_colour(c_black); $(13_10)            }$(13_10)        }$(13_10)$(13_10)        draw_text(current_x, _y, letter);$(13_10)        current_x += string_width(letter);$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)var center_x = display_get_gui_width() / 2;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (var_intro_timer >= 50)$(13_10){$(13_10)    draw_gold_black_text_centered("Welcome to the Escape of the cruel castle!", center_x, 210);$(13_10)}$(13_10)$(13_10)if (var_intro_timer >= 150)$(13_10){$(13_10)    draw_gold_black_text_centered("In this game, you are required to avoid obstacles, such as guards,", center_x, 280);$(13_10)}$(13_10)$(13_10)if (var_intro_timer >= 350)$(13_10){$(13_10)    draw_gold_black_text_centered("while exploring around the kingdom to determine", center_x, 350);$(13_10)}$(13_10)$(13_10)if (var_intro_timer >= 550)$(13_10){$(13_10)    draw_gold_black_text_centered("where the exit is located to escape as you try to retrieve and collect", center_x, 420);$(13_10)}$(13_10)$(13_10)if (var_intro_timer >= 750)$(13_10){$(13_10)    draw_gold_black_text_centered("coins, along with a keycard from one of the guards(hint:outside of castle),", center_x, 490);$(13_10)}$(13_10)if (var_intro_timer >= 950)$(13_10){$(13_10)    draw_gold_black_text_centered(" that allows you to exit the kingdom from the exit located within the castle", center_x, 560);$(13_10)}$(13_10)if (var_intro_timer >= 1150)$(13_10){$(13_10)    draw_gold_black_text_centered("to escape", center_x, 630);$(13_10)}$(13_10)if (var_intro_timer >= 1370)$(13_10){$(13_10)    draw_gold_black_text_centered("THE MINOTAUR KING!!!", center_x, 700);$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)draw_set_colour(c_white);$(13_10)draw_set_alpha(1);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);"
draw_set_font(fnt_goal_of_game);
draw_set_alpha(var_intro_alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

function draw_gold_black_text_centered(_text, _center_x, _y)
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
    draw_gold_black_text_centered("Welcome to the Escape of the cruel castle!", center_x, 210);
}

if (var_intro_timer >= 150)
{
    draw_gold_black_text_centered("In this game, you are required to avoid obstacles, such as guards,", center_x, 280);
}

if (var_intro_timer >= 350)
{
    draw_gold_black_text_centered("while exploring around the kingdom to determine", center_x, 350);
}

if (var_intro_timer >= 550)
{
    draw_gold_black_text_centered("where the exit is located to escape as you try to retrieve and collect", center_x, 420);
}

if (var_intro_timer >= 750)
{
    draw_gold_black_text_centered("coins, along with a keycard from one of the guards(hint:outside of castle),", center_x, 490);
}
if (var_intro_timer >= 950)
{
    draw_gold_black_text_centered(" that allows you to exit the kingdom from the exit located within the castle", center_x, 560);
}
if (var_intro_timer >= 1150)
{
    draw_gold_black_text_centered("to escape", center_x, 630);
}
if (var_intro_timer >= 1370)
{
    draw_gold_black_text_centered("THE MINOTAUR KING!!!", center_x, 700);
}




draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);