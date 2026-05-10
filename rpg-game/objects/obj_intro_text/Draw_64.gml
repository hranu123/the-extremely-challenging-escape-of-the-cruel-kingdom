/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7495C37F
/// @DnDArgument : "font" "fnt_intro_text"
/// @DnDSaveInfo : "font" "fnt_intro_text"
draw_set_font(fnt_intro_text);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 42D44542
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 6E602A85
/// @DnDArgument : "alpha" "var_intro_alpha"
draw_set_alpha(var_intro_alpha);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5422D91D
/// @DnDArgument : "code" "function draw_gold_white_text(_text, _x, _y)$(13_10){$(13_10)    var current_x = _x;$(13_10)$(13_10)    for (var i = 1; i <= string_length(_text); i++)$(13_10)    {$(13_10)        var letter = string_char_at(_text, i);$(13_10)$(13_10)        // ALTERNATE EVERY SINGLE LETTER$(13_10)        // Odd letters = dark gold$(13_10)        // Even letters = white$(13_10)$(13_10)        if (i mod 2 == 1)$(13_10)        {$(13_10)            // DARKER GOLD$(13_10)            draw_set_colour(make_colour_rgb(184, 134, 11));$(13_10)        }$(13_10)        else$(13_10)        {$(13_10)            // WHITE$(13_10)            draw_set_colour(c_white);$(13_10)        }$(13_10)$(13_10)        draw_text(current_x, _y, letter);$(13_10)$(13_10)        current_x += string_width(letter);$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)// DRAW INTRO TEXT$(13_10)$(13_10)if (var_intro_timer >= 20)$(13_10){$(13_10)    draw_gold_white_text($(13_10)        "Welcome to the cruel castle!",$(13_10)        330,$(13_10)        220$(13_10)    );$(13_10)}$(13_10)$(13_10)$(13_10)if (var_intro_timer >= 80)$(13_10){$(13_10)    draw_gold_white_text($(13_10)        "Are you capable of helping your brother escape from",$(13_10)        330,$(13_10)        290$(13_10)    );$(13_10)}$(13_10)$(13_10)$(13_10)if (var_intro_timer >= 140)$(13_10){$(13_10)    draw_gold_white_text($(13_10)        "The Minotaur King, Horribe Harod III, his knights, and the Queen,",$(13_10)        330,$(13_10)        360$(13_10)    );$(13_10)}$(13_10)$(13_10)$(13_10)if (var_intro_timer >= 200)$(13_10){$(13_10)    draw_gold_white_text($(13_10)        "or will you be captured like previous visitors",$(13_10)        330,$(13_10)        430$(13_10)    );$(13_10)}$(13_10)$(13_10)$(13_10)if (var_intro_timer >= 260)$(13_10){$(13_10)    draw_gold_white_text($(13_10)        "who attempted to save their friends!!!",$(13_10)        330,$(13_10)        500$(13_10)    );$(13_10)}$(13_10)$(13_10)"
function draw_gold_white_text(_text, _x, _y)
{
    var current_x = _x;

    for (var i = 1; i <= string_length(_text); i++)
    {
        var letter = string_char_at(_text, i);

        // ALTERNATE EVERY SINGLE LETTER
        // Odd letters = dark gold
        // Even letters = white

        if (i mod 2 == 1)
        {
            // DARKER GOLD
            draw_set_colour(make_colour_rgb(184, 134, 11));
        }
        else
        {
            // WHITE
            draw_set_colour(c_white);
        }

        draw_text(current_x, _y, letter);

        current_x += string_width(letter);
    }
}



// DRAW INTRO TEXT

if (var_intro_timer >= 20)
{
    draw_gold_white_text(
        "Welcome to the cruel castle!",
        330,
        220
    );
}


if (var_intro_timer >= 80)
{
    draw_gold_white_text(
        "Are you capable of helping your brother escape from",
        330,
        290
    );
}


if (var_intro_timer >= 140)
{
    draw_gold_white_text(
        "The Minotaur King, Horribe Harod III, his knights, and the Queen,",
        330,
        360
    );
}


if (var_intro_timer >= 200)
{
    draw_gold_white_text(
        "or will you be captured like previous visitors",
        330,
        430
    );
}


if (var_intro_timer >= 260)
{
    draw_gold_white_text(
        "who attempted to save their friends!!!",
        330,
        500
    );
}