extends Spatial

func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
		Base._collision(get_node("."),body,Base.Sup,Base.VelIn,Base.Bas,Base.VelR,Base.Enter)
		if get_node("../").name == "Obs":
			get_node("../../AnimationPlayer").play("Punch")
			get_node("../../AudioStreamPlayer3D")._set_playing(int(Base.StoreD["S"][4][0]))
	if body.is_in_group("vsPlayer"):
		Base._collision(get_node("."),body,Base.vsSup,Base.vsVelIn,Base.vsBas,Base.vsVelR,Base.vsEnter)

func _on_Area_body_exited(body):
	if body.is_in_group("Player"):
		Base._collision_exit(get_node("."),body,Base.Sup,Base.VelIn,Base.Bas,Base.VelR)
	if body.is_in_group("vsPlayer"):
		Base._collision_exit(get_node("."),body,Base.vsSup,Base.vsVelIn,Base.vsBas,Base.vsVelR)

func _on_Area_area_entered(area):
	if area.is_in_group("Player"):
		Base._collision(get_node("."),area,Base.Sup,Base.VelIn,Base.Bas,Base.VelR,Base.Enter)
	if area.is_in_group("vsPlayer"):
		Base._collision(get_node("."),area,Base.vsSup,Base.vsVelIn,Base.vsBas,Base.vsVelR,Base.vsEnter)
