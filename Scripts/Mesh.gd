extends MeshInstance

func _change():
	var packed_scene = PackedScene.new()
	packed_scene.pack(self)
	ResourceSaver.save(str("res://Scenes/",get_parent().get_name(),"/",get_name(),"/",get_name(),".tscn"), packed_scene)
