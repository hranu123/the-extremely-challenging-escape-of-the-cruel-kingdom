/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 526672CA
/// @DnDArgument : "var" "var_intro_timer"
/// @DnDArgument : "op" "2"
if(var_intro_timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E64E631
	/// @DnDParent : 526672CA
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "var_intro_timer"
	var_intro_timer += -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3DA2D593
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DBD467A
	/// @DnDParent : 3DA2D593
	/// @DnDArgument : "expr" "-0.02"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "var_intro_alpha"
	var_intro_alpha += -0.02;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 073D2E2A
	/// @DnDParent : 3DA2D593
	/// @DnDArgument : "var" "var_intro_alpha"
	if(var_intro_alpha == 0)
	{
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72633215
	/// @DnDParent : 3DA2D593
	instance_destroy();
}