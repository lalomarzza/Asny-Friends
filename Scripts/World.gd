extends WorldEnvironment
var Player1 = preload("res://Scenes/Player1.tscn")
const ObW = [preload("res://Scenes/Obs.tscn")]
var Obst = [preload("res://Scenes/Multi/Rope.tscn"),preload("res://Scenes/Multi/Mountain.tscn"),preload("res://Scenes/Multi/RockM.tscn")]
const worldI = [preload("res://Scenes/World/World.tscn"),preload("res://Scenes/World/WorldSummer.tscn"),preload("res://Scenes/World/WorldF.tscn"),preload("res://Scenes/World/WorldW.tscn"),preload("res://Scenes/World/WorldL.tscn")]
var ObsI = [preload("res://Scenes/World/Obs.tscn"),preload("res://Scenes/Multi/Spawn.tscn")]
var ObsS = [preload("res://Scenes/Multi/Spawn.tscn"),preload("res://Scenes/Multi/Spawn.tscn")]
var W
var Ob
var season = 0
var Play1
var Play2
var vsPlay
var Rocket
const SCORE_TO_WIN = 10
var Store1 = {}
var Store2 = {}
var St = [Store1,Store2]
signal game_finished()
func _ready():
	init()
func change():
	Base.Moon.free()
	W.free()
	Ob.queue_free()
	init()
func init():
	new_world(Base.StoreD)
	if Base.StoreD["S"][6][2] == 4:
		Base.Moon = Base.Wather[0][1].instance()
		Base.Moon.set_translation(Vector3(0,-110,0))
		self.add_child(Base.Moon)
	else: 
		Base.Moon = Base.Wather[0][0].instance()
		Base.Moon.set_translation(Vector3(0,-110,0))
		self.add_child(Base.Moon)
func new_world(dic):
	W = worldI[dic["S"][6][2]].instance()
	add_child(W)
	Ob = ObsI[int(dic["S"][6][0])].instance()
	add_child(Ob)
	if Base.StoreD["S"][6][0] != "0":
		Spawn(dic)
		pass
func start():
	if get_tree().is_network_server():
		Base.Bas = get_node("Spatial0")
		Base.C = Base.Bas.get_node("Center")
		Base.Player0 = get_node("Player0")
		Base.Player1 = get_node("Player1")
		Base.vsBas = get_node("Spatial1")
		Base.vsC = Base.vsBas.get_node("Center")
		Base.vsSup = 1
		Base.Player1.set_network_master(get_tree().get_network_connected_peers()[0])
	else:
		Base.Bas = get_node("Spatial1")
		Base.C = Base.Bas.get_node("Center")
		Base.Player0 = get_node("Player0")
		Base.Player1 = get_node("Player1")
		Base.vsBas = get_node("Spatial0")
		Base.vsC = Base.vsBas.get_node("Center")
		Base.vsSup = 1
		Base.Player1.set_network_master(get_tree().get_network_unique_id())
	if is_network_master():
		rpc("update_player",true,Base.StoreD)
	else:
		rpc("update_player",false,Base.StoreD)
	print("unique id: ", get_tree().get_network_unique_id())
sync func update_player(store,s):
	if store:
		St[0] = s
#		if Base.StoreD["S"][6][2] != 4:St[0]["S"][6][2] = Base.StoreD["S"][6][2]
#		else: St[0]["S"][6][2] = 4
		for i in 2:
			St[0]["S"][6][4][i] = randi()%Obst.size()
	else:
		St[1] = s
	prints(St)
	if St[0].size() >= 1 && St[1].size() >= 1:
		St[1]["S"][6] = St[0]["S"][6]
		prints(St[0],St[1])
		syn()
sync func syn():
	if get_tree().is_network_server():
		vsPlay = Base.PlayerIns[int(St[1]["S"][0])][St[0]["S"][6][2]].instance()
		Base.Player1.add_child(vsPlay)
		Rocket = Base.RocketIns[int(str(St[1]["S"][1])[1])][St[0]["S"][6][2]].instance()
		vsPlay.get_node("../").add_child(Rocket)
#		W.free()
#		Ob.free()
#		new_world(St[0])
#		Spawn(St[0])
		var ctd = 0
		for i in St[1][St[1]["S"][0]]:
			if int(str(i)[1]) == 1 : vsPlay.get_node(str("Esqueleto/",St[1]["S"][0])).add_child(Base.St[int(St[1]["S"][0])][ctd][Base.StoreD["S"][6][2]].instance())
			ctd+=1
	else:
		W.free()
		Ob.free()
		new_world(St[0])
		Spawn(St[0])
		vsPlay = Base.PlayerIns[int(St[0]["S"][0])][St[0]["S"][6][2]].instance()
		Base.Player1.add_child(vsPlay)
		Rocket = Base.RocketIns[int(str(St[0]["S"][1])[1])][St[0]["S"][6][2]].instance()
		vsPlay.get_node("../").add_child(Rocket)
		var ctd = 0
		for i in St[0][St[0]["S"][0]]:
			if int(str(i)[1]) == 1 : vsPlay.get_node(str("Esqueleto/",St[0]["S"][0])).add_child(Base.St[int(St[0]["S"][0])][ctd][St[0]["S"][6][2]].instance())
			ctd+=1
	Base.Ctrl.get_node("Label2").set_text(str(St[0]["S"][6],St[1]["S"][6]))
	Base.start()
	Base.vsCam.S1M()
	Base.nodecam = W.get_node("Player1/Camera")
func Spawn(dic):
	for a in 2:Ob.get_node(str("Center/",a,"/Spatial")).add_child(Obst[int(randi()%2)].instance())
	for e in 6: for i in dic["S"][6][5]:Ob.get_node(str("Center/Obs",e,"/",i,"/Position3D")).add_child(Base.season[dic["S"][6][2]][0][i].instance())
	for o in Ob.get_node("Center/Env/Mn").get_children(): o.get_node("Spatial").add_child(Base.season[dic["S"][6][2]][1][0].instance())
sync func pos(rot):Base.Player0.Bas.set_rotation(rot)
sync func pos2(rot):Base.Player1.Bas.set_rotation(rot)
func _process(delta):
	if get_tree().is_network_server():rpc_unreliable("pos",Base.Player0.Bas.get_rotation())
	else:rpc_unreliable("pos2",Base.Player1.Bas.get_rotation())
#func _process(delta):
#	if get_tree().is_network_server():
#		rpc_unreliable("pos",Base.Player0.get_node("../Spatial0").get_rotation())
#	else:
#		rpc_unreliable("pos2",Base.Player1.get_node("../Spatial1").get_rotation())

#sync func pos(rot):
#	Base.Player0.get_node("../Spatial0").set_rotation(rot)
#
#sync func pos2(rot):
#	Base.Player1.get_node("../Spatial1").set_rotation(rot)


#		Base.Ctrl.get_node("Label").set_text(str(Play1.name,pos))
#		Play2.set_rotation(rot)
#		Play2.set_translation(pos)
#func _process(delta):
#	if get_tree().is_network_server():
#		rpc_unreliable("pos",Play1.get_rotation(),Play1.get_translation())
#	else:
#		rpc_unreliable("pos2",Play2.get_rotation(),Play2.get_translation())

#func _on_exit_game_pressed():
#	emit_signal("game_finished")
