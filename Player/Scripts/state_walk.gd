class_name State_Walk extends State

@export var move_speed : float = 100.0

@onready var idle : State = $"../Idle"


# What happens when the player enters this state?
func Enter() -> void:
	player.UpdateAnimation("walk")
	pass

func Exit() -> void:
	pass

# Process update
func Process( _delta : float ) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		player.UpdateAnimation("walk")
	return null

#During the _physics_process update
func Physics( _delta : float ) -> State:
	return null

#Input events in this state
func HandleInput( _event: InputEvent ) -> State:
	return null
