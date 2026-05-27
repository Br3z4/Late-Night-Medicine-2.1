class_name State_Idle extends State

@onready var walk : State = $"../Walk"

# What happens when the player enters this state?
func Enter() -> void:
	player.UpdateAnimation("idle")
	pass

func Exit() -> void:
	pass

# Process update
func Process( _delta : float ) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null

#During the _physics_process update
func Physics( _delta : float ) -> State:
	return null

#Input events in this state
func HandleInput( _event: InputEvent ) -> State:
	return null
