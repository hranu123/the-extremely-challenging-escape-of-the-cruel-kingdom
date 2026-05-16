/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 53CAD8D0
/// @DnDArgument : "key" "ord("E")"
var l53CAD8D0_0;
l53CAD8D0_0 = keyboard_check_pressed(ord("E"));
if (l53CAD8D0_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18A72133
	/// @DnDParent : 53CAD8D0
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "global.var_has_keycard"
	global.var_has_keycard = true;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0EBC6655
	/// @DnDApplyTo : other
	/// @DnDParent : 53CAD8D0
	with(other) instance_destroy();
}