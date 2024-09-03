extends LightOccluder2D


@onready var polygon = occluder.polygon.duplicate()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for i in occluder.polygon.size():
		occluder.polygon[i] = global_transform * polygon[i]
		
		
