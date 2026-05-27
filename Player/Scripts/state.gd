class_name State extends Node

static var player: Player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# What happens when the player enters this state?
func Enter() -> void:
	pass

func Exit() -> void:
	pass

# Process update
func Process( _delta : float ) -> State:
	return null

#During the _physics_process update
func Physics( _delta : float ) -> State:
	return null

#Input events in this state
func HandleInput( _event: InputEvent ) -> State:
	return null
