class_name Test123
extends Node3D

## Called when the node enters the scene tree for the first time.
func _ready() -> void:
	save_json()
	save_binary()
	
func save_binary():
	var space = get_viewport().world_3d.space
	var file = FileAccess.open("user://space.bin", FileAccess.WRITE)
	var binary = RapierPhysicsServer3D.space_export_binary(space)
	file.store_buffer(binary)
	RapierPhysicsServer3D.space_import_binary(space, binary)

func save_json():
	var space = get_viewport().world_3d.space
	var file = FileAccess.open("user://space.json", FileAccess.WRITE)
	var json = RapierPhysicsServer3D.space_export_json(space)
	file.store_string(json)
