/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 546D3D75
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "sprite" "spr_exit_control_for_room"
/// @DnDArgument : "stackorder" "1"
/// @DnDSaveInfo : "sprite" "spr_exit_control_for_room"
var l546D3D75_0 = sprite_get_height(spr_exit_control_for_room);
var l546D3D75_1 = 0;
for(var l546D3D75_2 = 1; l546D3D75_2 > 0; --l546D3D75_2) {
	draw_sprite(spr_exit_control_for_room, 0, 20, 100 + l546D3D75_1);
	l546D3D75_1 += l546D3D75_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 4B3028E3
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "250"
/// @DnDArgument : "sprite" "spr_restart_room_control_for_room"
/// @DnDSaveInfo : "sprite" "spr_restart_room_control_for_room"
var l4B3028E3_0 = sprite_get_width(spr_restart_room_control_for_room);
var l4B3028E3_1 = 0;
for(var l4B3028E3_2 = 1; l4B3028E3_2 > 0; --l4B3028E3_2) {
	draw_sprite(spr_restart_room_control_for_room, 0, 20 + l4B3028E3_1, 250);
	l4B3028E3_1 += l4B3028E3_0;
}