extends MultiMeshInstance2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var bodies = RapierPhysicsServer2D.space_get_active_bodies(get_viewport().world_2d.space)
	var transforms = RapierPhysicsServer2D.space_get_bodies_transform(get_viewport().world_2d.space, bodies)
	multimesh.instance_count = transforms.size()
	var idx = 0
	for transform in transforms:
		multimesh.set_instance_transform_2d(idx, transform)
		idx += 1
