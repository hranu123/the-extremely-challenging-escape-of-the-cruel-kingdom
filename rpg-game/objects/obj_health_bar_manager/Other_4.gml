/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43D5A981
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "You_lose"
if(room == You_lose)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 121635C9
	/// @DnDParent : 43D5A981
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D1AE822
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Lobby"
if(room == Lobby)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 70C04F3F
	/// @DnDParent : 2D1AE822
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42DEB1D1
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Exit_you_win"
if(room == Exit_you_win)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B7C239A
	/// @DnDParent : 42DEB1D1
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 15E07890
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Intro_text"
if(room == Intro_text)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6CC2C4E9
	/// @DnDParent : 15E07890
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D5F2966
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "You_lose_guard"
if(room == You_lose_guard)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72D99360
	/// @DnDParent : 6D5F2966
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BF92037
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Controls"
if(room == Controls)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 390CA016
	/// @DnDParent : 7BF92037
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12C977AE
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "goal_of_game"
if(room == goal_of_game)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D42EF0A
	/// @DnDParent : 12C977AE
	instance_destroy();
}