/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 546D3D75
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "sprite" "spr_exit_control"
/// @DnDSaveInfo : "sprite" "spr_exit_control"
var l546D3D75_0 = sprite_get_width(spr_exit_control);
var l546D3D75_1 = 0;
for(var l546D3D75_2 = 1; l546D3D75_2 > 0; --l546D3D75_2) {
	draw_sprite(spr_exit_control, 0, 20 + l546D3D75_1, 100);
	l546D3D75_1 += l546D3D75_0;
}