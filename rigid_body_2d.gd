extends RigidBody2D

@export var other: Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_collision_exception_with(other)
