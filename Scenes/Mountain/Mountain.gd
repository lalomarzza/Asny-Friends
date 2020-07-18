extends Spatial

func _ready():
	if Base.StoreD["S"][6][0] == "0":
		for e in 4: for i in 3:get_node(str(e,"/",i)).add_child(Base.season[Base.StoreD["S"][6][2]][0][randi()%Base.season[Base.StoreD["S"][6][2]][0].size()].instance())
		get_node(str(randi()%4)).add_child(Base.season[Base.StoreD["S"][6][2]][2][randi()%Base.season[Base.StoreD["S"][6][2]][2].size()].instance())
