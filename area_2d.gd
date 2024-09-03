extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var vec = Vector2()
	print(vec)
	print(vec.normalized())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print(body, "enter")


func _on_body_exited(body: Node2D) -> void:
	print(body, "exit")
