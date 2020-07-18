extends Spatial
var Mountain
var Obs
var r = 0
var cr = 0
var BasObs = preload("res://Scenes/BasIns.tscn")
var BaseIns = preload("res://Scenes/BasObs.tscn")
var Bas
var BasO
func _ready():randomize()
func _on_Area_area_entered(area):
	if area.is_in_group("AreaPlayer"):
		match Base.Sup:
			4:if get_parent().name == "SpatialW":
					if Base.StoreD["S"][6][2] == 4:
						while r == 0: r = randi()%Base.Wather[1].size()
						Bas = Base.Wather[1][r][1].instance()
						self.add_child(Bas)
					else:
						while r == 0: r = randi()%Base.Wather[1].size()
						Bas = Base.Wather[1][r][0].instance()
						self.add_child(Bas)
			0,1,2,3:if get_parent().name == "Spatial":
					Bas = BaseIns.instance()
					self.add_child(Bas)
					if Base.StoreD["S"][6][0] == "1":
						r = "0"
						Bas.rotation_degrees.y = randi()%360+1
					Mountain = Base.season[Base.StoreD["S"][6][2]][1][randi()%Base.season[Base.StoreD["S"][6][2]][1].size()].instance()
					Mountain.rotation_degrees.y = randi()%360+1
					Bas.add_child(Mountain)
func _on_Area_area_exited(area):if area.is_in_group("AreaPlayer")&&get_children().size()>=1:Bas.queue_free()
