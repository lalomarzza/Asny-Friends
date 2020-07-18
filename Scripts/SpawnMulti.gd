extends Spatial
var Play = [preload("res://Scenes/House/House.tscn"),preload("res://Scenes/House2/House2.tscn"),preload("res://Scenes/Pig/PigObs.tscn")]
var PlayS = [preload("res://Scenes/House/HouseS.tscn"),preload("res://Scenes/House2/House2S.tscn")]
var PlayF = [preload("res://Scenes/House/House.tscn"),preload("res://Scenes/House2/House2.tscn"),preload("res://Scenes/Pig/PigObs.tscn")]
var PlayW = [preload("res://Scenes/House/HouseW.tscn"),preload("res://Scenes/House2/House2W.tscn")]
var PlayL = [preload("res://Scenes/House/HouseL.tscn"),preload("res://Scenes/House2/House2.tscn")]
var Spring = [preload("res://Scenes/Mountain/Mountain.tscn"),preload("res://Scenes/Tower/Tower.tscn"),preload("res://Scenes/Rope/Rope.tscn"),Play,preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1.tscn"),preload("res://Scenes/Rocks/Rock2.tscn"),preload("res://Scenes/Rocks/Rock3.tscn"),preload("res://Scenes/Trunk/Trunk.tscn"),preload("res://Scenes/Trunk/Trunk2.tscn"),preload("res://Scenes/Trunk/Trunk.tscn"),preload("res://Scenes/Trunk/Trunk2.tscn")]
var Summer = [preload("res://Scenes/Mountain/MountainS.tscn"),preload("res://Scenes/Tower/TowerS.tscn"),preload("res://Scenes/Rope/Rope.tscn"),PlayS,preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1S.tscn"),preload("res://Scenes/Rocks/Rock2S.tscn"),preload("res://Scenes/Rocks/Rock3S.tscn"),preload("res://Scenes/Trunk/TrunkS.tscn"),preload("res://Scenes/Trunk/TrunkS2.tscn"),preload("res://Scenes/Trunk/TrunkS.tscn"),preload("res://Scenes/Trunk/TrunkS2.tscn")]
var Fall = [preload("res://Scenes/Mountain/MountainF.tscn"),preload("res://Scenes/Tower/TowerF.tscn"),preload("res://Scenes/Rope/Rope.tscn"),PlayF,preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1F.tscn"),preload("res://Scenes/Rocks/Rock2F.tscn"),preload("res://Scenes/Rocks/Rock3F.tscn"),preload("res://Scenes/Trunk/TrunkF.tscn"),preload("res://Scenes/Trunk/TrunkF2.tscn"),preload("res://Scenes/Trunk/TrunkF.tscn"),preload("res://Scenes/Trunk/TrunkF2.tscn")]
var Winter = [preload("res://Scenes/Mountain/MountainW.tscn"),preload("res://Scenes/Tower/TowerW.tscn"),preload("res://Scenes/Rope/Rope.tscn"),PlayW,preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1.tscn"),preload("res://Scenes/Rocks/Rock2.tscn"),preload("res://Scenes/Rocks/Rock3.tscn"),preload("res://Scenes/Pine/Pinod.scn"),preload("res://Scenes/Pine/Pinod.scn"),preload("res://Scenes/Trunk/TrunkW.tscn"),preload("res://Scenes/IceMan/IceMan.tscn")]
var Pixel = [preload("res://Scenes/Mountain/MountainL.tscn"),preload("res://Scenes/Tower/TowerL.tscn"),preload("res://Scenes/Rope/Rope.tscn"),PlayL,preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1L.tscn"),preload("res://Scenes/Rocks/Rock2L.tscn"),preload("res://Scenes/Rocks/Rock3L.tscn"),preload("res://Scenes/Trunk/TrunkL.tscn"),preload("res://Scenes/Trunk/TrunkL2.tscn"),preload("res://Scenes/Trunk/TrunkL.tscn"),preload("res://Scenes/Trunk/TrunkL2.tscn")]
var season = [Spring,Summer,Fall,Winter,Pixel]
var Wather = [preload("res://Scenes/BlueMoon/Reef.tscn"),preload("res://Scenes/BlueMoon/Reef2.tscn"),preload("res://Scenes/BlueMoon/Reef3.tscn"),preload("res://Scenes/BlueMoon/Octopus.tscn"),preload("res://Scenes/BlueMoon/Sharpedo.tscn"),preload("res://Scenes/BlueMoon/Castle.tscn")]
var Mountain
var Obs
var r
var cr = 0
var BasObs = preload("res://Scenes/BasIns.tscn")
var BaseIns = preload("res://Scenes/BasObs.tscn")
var Bas
var BasO
func _ready():
	randomize()
func _on_Area_area_entered(area):
	if area.is_in_group("AreaPlayer"):
		Bas = BaseIns.instance()
		self.add_child(Bas)
		r = round(rand_range(10,1))
		match str(r):
			"10" : Mountain = season[Base.Season][2].instance()
			"8","9" : Mountain = season[Base.Season][1].instance()
			"1","2","3","4","5","6","7" : Mountain = season[Base.Season][0].instance()
		Bas.add_child(Mountain)
		BasO = BasObs.instance()
		Bas.add_child(BasO)
		for i in BasO.get_children():
			cr += 1
			if cr == 3 : 
				r = randi()%season[Base.Season][3].size()
				Obs = season[Base.Season][3][r].instance()
			else:
				r = round(rand_range(11,4))
				Obs = season[Base.Season][r].instance()
			i.add_child(Obs)

func _on_Area_area_exited(area):
	if area.is_in_group("AreaPlayer"):
		Bas.queue_free()
