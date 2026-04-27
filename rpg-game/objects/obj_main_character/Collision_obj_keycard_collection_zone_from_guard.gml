/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 4770523E
/// @DnDArgument : "key" "ord("E")"
var l4770523E_0;
l4770523E_0 = keyboard_check_pressed(ord("E"));
if (l4770523E_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44B23047
	/// @DnDParent : 4770523E
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "global.var_has_keycard"
	global.var_has_keycard = true;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1FCFA2E3
	/// @DnDApplyTo : other
	/// @DnDParent : 4770523E
	with(other) instance_destroy();
}