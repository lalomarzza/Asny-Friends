extends Spatial


func _on_Area_area_entered(area):
	if area.is_in_group("Obs") or area.is_in_group("Power"):
		area.get_parent().queue_free()
	if area.is_in_group("Day"):
		self.get_node("../SpotLight").hide()


func _on_Anim_body_entered(body):
	if body.is_in_group("Player"):
		if get_parent().name == "House2":
			self.get_node("../DogAsny/AnimationPlayer").play("Ladrando")
			$"../AudioStreamPlayer3D"._set_playing(int(Base.StoreD["S"][4][0]))
		self.get_node("../HHA/AnimationPlayer").play(get_parent().name)


func _on_Area2_body_entered(body):
	if body.is_in_group("Player"):
		Base._collision(get_node("."),body,Base.Sup,Base.VelIn,Base.Bas,Base.VelR,Base.Enter)


func _on_Anim_body_exited(body):
	if body.is_in_group("Player"):
		if get_parent().name == "House2":
			self.get_node("../DogAsny/AnimationPlayer").play("Sleep")
			$AudioStreamPlayer3D._set_playing(false)
