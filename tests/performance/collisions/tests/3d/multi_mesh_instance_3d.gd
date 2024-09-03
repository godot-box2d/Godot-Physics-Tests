extends MultiMeshInstance3D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var bodies = RapierPhysicsServer3D.space_get_active_bodies(get_viewport().world_3d.space)
	var transforms = RapierPhysicsServer3D.space_get_bodies_transform(get_viewport().world_3d.space, bodies)
	multimesh.instance_count = transforms.size()
	var idx = 0
	for transform in transforms:
		multimesh.set_instance_transform(idx, transform)
		idx += 1
