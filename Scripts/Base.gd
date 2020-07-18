extends Control
var Mountains = [preload("res://Scenes/Mountain/Mountain.tscn"),preload("res://Scenes/Mountain/Mountain.tscn"),preload("res://Scenes/Mountain/MountainT1.tscn"),preload("res://Scenes/Recua/Recua.tscn"),preload("res://Scenes/Tower/Tower.tscn"),preload("res://Scenes/Rope/Rope.tscn")]
var MountainS = [preload("res://Scenes/Mountain/MountainS.tscn"),preload("res://Scenes/Mountain/MountainS.tscn"),preload("res://Scenes/Mountain/MountainST1.tscn"),preload("res://Scenes/Recua/RecuaS.tscn"),preload("res://Scenes/Tower/TowerS.tscn"),preload("res://Scenes/Rope/RopeS.tscn")]
var MountainF = [preload("res://Scenes/Mountain/MountainF.tscn"),preload("res://Scenes/Mountain/MountainF.tscn"),preload("res://Scenes/Mountain/MountainFT1.tscn"),preload("res://Scenes/Recua/RecuaF.tscn"),preload("res://Scenes/Tower/TowerF.tscn"),preload("res://Scenes/Rope/RopeF.tscn")]
var MountainW = [preload("res://Scenes/Mountain/MountainW.tscn"),preload("res://Scenes/Mountain/MountainW.tscn"),preload("res://Scenes/Mountain/MountainWT1.tscn"),preload("res://Scenes/Recua/RecuaW.tscn"),preload("res://Scenes/Tower/TowerW.tscn"),preload("res://Scenes/Rope/RopeW.tscn")]
var MountainL = [preload("res://Scenes/Mountain/MountainL.tscn"),preload("res://Scenes/Mountain/MountainL.tscn"),preload("res://Scenes/Mountain/MountainLT1.tscn"),preload("res://Scenes/Recua/RecuaL.tscn"),preload("res://Scenes/Tower/TowerL.tscn"),preload("res://Scenes/Rope/RopeL.tscn"),preload("res://Scenes/Recua/RecuaL.tscn")]
var Play = [preload("res://Scenes/House/House.tscn"),preload("res://Scenes/House2/House2.tscn"),preload("res://Scenes/2/PigObs.tscn")]
var PlayS = [preload("res://Scenes/House/HouseS.tscn"),preload("res://Scenes/House2/House2S.tscn")]
var PlayF = [preload("res://Scenes/House/House.tscn"),preload("res://Scenes/House2/House2.tscn"),preload("res://Scenes/2/PigObs.tscn")]
var PlayW = [preload("res://Scenes/House/HouseW.tscn"),preload("res://Scenes/House2/House2W.tscn")]
var PlayL = [preload("res://Scenes/House/HouseL.tscn"),preload("res://Scenes/House2/House2L.tscn"),preload("res://Scenes/2/PigObsL.tscn")]
var Spring = [preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1.tscn"),preload("res://Scenes/Rocks/Rock2.tscn"),preload("res://Scenes/Rocks/Rock3.tscn"),preload("res://Scenes/Trunk/Trunk.tscn"),preload("res://Scenes/Trunk/Trunk2.tscn"),preload("res://Scenes/Trunk/Trunk.tscn"),preload("res://Scenes/Trunk/Trunk2.tscn")]
var Summer = [preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1S.tscn"),preload("res://Scenes/Rocks/Rock2S.tscn"),preload("res://Scenes/Rocks/Rock3S.tscn"),preload("res://Scenes/Trunk/TrunkS.tscn"),preload("res://Scenes/Trunk/TrunkS2.tscn"),preload("res://Scenes/Trunk/TrunkS.tscn"),preload("res://Scenes/Trunk/TrunkS2.tscn")]
var Fall = [preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1F.tscn"),preload("res://Scenes/Rocks/Rock2F.tscn"),preload("res://Scenes/Rocks/Rock3F.tscn"),preload("res://Scenes/Trunk/TrunkF.tscn"),preload("res://Scenes/Trunk/TrunkF2.tscn"),preload("res://Scenes/Trunk/TrunkF.tscn"),preload("res://Scenes/Trunk/TrunkF2.tscn")]
var Winter = [preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1.tscn"),preload("res://Scenes/Rocks/Rock2.tscn"),preload("res://Scenes/Rocks/Rock3.tscn"),preload("res://Scenes/Pine/Pinod.scn"),preload("res://Scenes/Pine/Pinod.scn"),preload("res://Scenes/Trunk/TrunkW.tscn"),preload("res://Scenes/IceMan/IceMan.tscn")]
var Pixel = [preload("res://Scenes/PowerUp/Power.tscn"),preload("res://Scenes/Rocks/Rock1L.tscn"),preload("res://Scenes/Rocks/Rock2L.tscn"),preload("res://Scenes/Rocks/Rock3L.tscn"),preload("res://Scenes/Trunk/TrunkL.tscn"),preload("res://Scenes/Trunk/TrunkL2.tscn"),preload("res://Scenes/Trunk/TrunkL.tscn"),preload("res://Scenes/Trunk/TrunkL2.tscn")]
var season = [[Spring,Mountains,Play],[Summer,MountainS,PlayS],[Fall,MountainF,PlayF],[Winter,MountainW,PlayW],[Pixel,MountainL,PlayL]]
var Wather = [[preload("res://Scenes/BlueMoon/BlueMoon.tscn"),preload("res://Scenes/BlueMoon/BlueMoonL.tscn")],[[preload("res://Scenes/BlueMoon/Octopus.tscn"),preload("res://Scenes/BlueMoon/OctopusL.tscn")],[preload("res://Scenes/BlueMoon/Octopus.tscn"),preload("res://Scenes/BlueMoon/OctopusL.tscn")],[preload("res://Scenes/BlueMoon/Sharpedo.tscn"),preload("res://Scenes/BlueMoon/SharpedoL.tscn")],[preload("res://Scenes/BlueMoon/Castle.tscn"),preload("res://Scenes/BlueMoon/CastleL.tscn")],[preload("res://Scenes/BlueMoon/Reef.tscn"),preload("res://Scenes/BlueMoon/ReefL.tscn")]]]
var PlayerIns = [[preload("res://Scenes/0/0.tscn"),preload("res://Scenes/0/0S.tscn"),preload("res://Scenes/0/0F.tscn"),preload("res://Scenes/0/0W.tscn"),preload("res://Scenes/0/0L.tscn")],[preload("res://Scenes/1/1.tscn"),preload("res://Scenes/1/1S.tscn"),preload("res://Scenes/1/1F.tscn"),preload("res://Scenes/1/1W.tscn"),preload("res://Scenes/1/1L.tscn")],[preload("res://Scenes/2/2.tscn"),preload("res://Scenes/2/2S.tscn"),preload("res://Scenes/2/2F.tscn"),preload("res://Scenes/2/2W.tscn"),preload("res://Scenes/2/2L.tscn")],[preload("res://Scenes/3/3.tscn"),preload("res://Scenes/3/3S.tscn"),preload("res://Scenes/3/3F.tscn"),preload("res://Scenes/3/3W.tscn"),preload("res://Scenes/3/3L.tscn")]]
var RocketIns = [[preload("res://Scenes/Rocket/RocketRed.tscn"),preload("res://Scenes/Rocket/RocketRedS.tscn"),preload("res://Scenes/Rocket/RocketRedF.tscn"),preload("res://Scenes/Rocket/RocketRedW.tscn"),preload("res://Scenes/Rocket/RocketRedL.tscn")],[preload("res://Scenes/Rocket/RocketBlue.tscn"),preload("res://Scenes/Rocket/RocketBlueS.tscn"),preload("res://Scenes/Rocket/RocketBlueF.tscn"),preload("res://Scenes/Rocket/RocketBlueW.tscn"),preload("res://Scenes/Rocket/RocketBlueL.tscn")]]
var StickerPlayer = [preload("res://Images/asnyicon.png"),preload("res://Images/DogIcon.png"),preload("res://Images/PigIcon.png"),preload("res://Images/HumanIcon.png")]
var BasObs = [preload("res://Scenes/BasObs.tscn")]
var Asny = [[preload("res://Scenes/0/Hat/Hat.tscn"),preload("res://Scenes/0/Hat/HatS.tscn"),preload("res://Scenes/0/Hat/HatF.tscn"),preload("res://Scenes/0/Hat/HatW.tscn"),preload("res://Scenes/0/Hat/HatL.tscn")],[preload("res://Scenes/0/Shirt/Shirt.tscn"),preload("res://Scenes/0/Shirt/ShirtS.tscn"),preload("res://Scenes/0/Shirt/ShirtF.tscn"),preload("res://Scenes/0/Shirt/ShirtW.tscn"),preload("res://Scenes/0/Shirt/ShirtL.tscn")],[preload("res://Scenes/0/Glass/Glass.tscn"),preload("res://Scenes/0/Glass/GlassS.tscn"),preload("res://Scenes/0/Glass/GlassF.tscn"),preload("res://Scenes/0/Glass/GlassW.tscn"),preload("res://Scenes/0/Glass/GlassL.tscn")],[preload("res://Scenes/0/Shoes/Shoes.tscn"),preload("res://Scenes/0/Shoes/ShoesS.tscn"),preload("res://Scenes/0/Shoes/ShoesF.tscn"),preload("res://Scenes/0/Shoes/ShoesW.tscn"),preload("res://Scenes/0/Shoes/ShoesL.tscn")]]
var Dogy = [[preload("res://Scenes/1/Hat/Hat.tscn"),preload("res://Scenes/1/Hat/HatS.tscn"),preload("res://Scenes/1/Hat/HatF.tscn"),preload("res://Scenes/1/Hat/HatW.tscn"),preload("res://Scenes/1/Hat/HatL.tscn")],[preload("res://Scenes/1/Shirt/Shirt.tscn"),preload("res://Scenes/1/Shirt/ShirtS.tscn"),preload("res://Scenes/1/Shirt/ShirtF.tscn"),preload("res://Scenes/1/Shirt/ShirtW.tscn"),preload("res://Scenes/1/Shirt/ShirtL.tscn")],[preload("res://Scenes/1/Glass/Glass.tscn"),preload("res://Scenes/1/Glass/GlassS.tscn"),preload("res://Scenes/1/Glass/GlassF.tscn"),preload("res://Scenes/1/Glass/GlassW.tscn"),preload("res://Scenes/1/Glass/GlassL.tscn")],[preload("res://Scenes/1/Shoes/Shoes.tscn"),preload("res://Scenes/1/Shoes/ShoesS.tscn"),preload("res://Scenes/1/Shoes/ShoesF.tscn"),preload("res://Scenes/1/Shoes/ShoesW.tscn"),preload("res://Scenes/1/Shoes/ShoesL.tscn")]]
var Pigy = [[preload("res://Scenes/2/Hat/Hat.tscn"),preload("res://Scenes/2/Hat/HatS.tscn"),preload("res://Scenes/2/Hat/HatF.tscn"),preload("res://Scenes/2/Hat/HatW.tscn"),preload("res://Scenes/2/Hat/HatL.tscn")],[preload("res://Scenes/2/Shirt/Shirt.tscn"),preload("res://Scenes/2/Shirt/ShirtS.tscn"),preload("res://Scenes/2/Shirt/ShirtF.tscn"),preload("res://Scenes/2/Shirt/ShirtW.tscn"),preload("res://Scenes/2/Shirt/ShirtL.tscn")],[preload("res://Scenes/2/Glass/Glass.tscn"),preload("res://Scenes/2/Glass/GlassS.tscn"),preload("res://Scenes/2/Glass/GlassF.tscn"),preload("res://Scenes/2/Glass/GlassW.tscn"),preload("res://Scenes/2/Glass/GlassL.tscn")],[preload("res://Scenes/2/Shoes/Shoes.tscn"),preload("res://Scenes/2/Shoes/ShoesS.tscn"),preload("res://Scenes/2/Shoes/ShoesF.tscn"),preload("res://Scenes/2/Shoes/ShoesW.tscn"),preload("res://Scenes/2/Shoes/ShoesL.tscn")]]
var Humy = [[preload("res://Scenes/3/Hat/Hat.tscn"),preload("res://Scenes/3/Hat/HatS.tscn"),preload("res://Scenes/3/Hat/HatF.tscn"),preload("res://Scenes/3/Hat/HatW.tscn"),preload("res://Scenes/3/Hat/HatL.tscn")],[preload("res://Scenes/3/Shirt/Shirt.tscn"),preload("res://Scenes/3/Shirt/ShirtS.tscn"),preload("res://Scenes/3/Shirt/ShirtF.tscn"),preload("res://Scenes/3/Shirt/ShirtW.tscn"),preload("res://Scenes/3/Shirt/ShirtL.tscn")],[preload("res://Scenes/3/Glass/Glass.tscn"),preload("res://Scenes/3/Glass/GlassS.tscn"),preload("res://Scenes/3/Glass/GlassF.tscn"),preload("res://Scenes/3/Glass/GlassW.tscn"),preload("res://Scenes/3/Glass/GlassL.tscn")],[preload("res://Scenes/3/Shoes/Shoes.tscn"),preload("res://Scenes/3/Shoes/ShoesS.tscn"),preload("res://Scenes/3/Shoes/ShoesF.tscn"),preload("res://Scenes/3/Shoes/ShoesW.tscn"),preload("res://Scenes/3/Shoes/ShoesL.tscn")]]
var St = [Asny,Dogy,Pigy,Humy]
var img = [preload("res://Images/Buble.png"),preload("res://Images/BublePressed.png")]
var area = preload("res://Scenes/Area.tscn").instance()
var Vec2 = Vector2(1080,1920)
var Vec22 = Vector2(512,512)
var VelCam = Vector3(0.0,1.0,0.0)
var vsVelCam = Vector3(0.0,1.0,0.0)
var VelR = -5
var vsVelR = -5
var BasO
var button
var fn
var fnc
var Rocket
var vsRocket
var Player
var Player0
var Player1
var vsPlay
var Play2
var Bas
var vsBas
var C
var vsC
var PlayerA 
var PlayerB
var PlayerC
var PlayerD
var Cam
var vsCam
var nodecam
var Moon
var Img
var sensor = 1
var IPA = []
var IPB = ""
var SV = 1
var Sup = null
var vsSup
var VelIn = 1
var vsVelIn = 1
var Arm = 1
var Healt = 0
var Coin = 0
var Diamond = 5
var Cnt = 0
var Ct = 0
var c = 0
var TF = false
var PuntMax = false
var Castle = false
var VR = false
var Multi = false
var OnOff = false
var Enter = ""
var vsEnter = ""
const DEFAULT_PORT = 8910
const StoreItems = "user://Store.dat"
const password = "4321"
var is_loadedSt = false
var StoreD = {"S": ["0",["0"],["0",1],["1"],["1"],["0"],["0",0,0,0,[0,0],[1,4,2,5,3,4]]] ,"PuntMax" : 0 ,"Diamond":0, "0" : [["0","0"],["0","0"],["0","0"],["0","0"]], "1" : [["0","0"],["0","0"],["0","0"],["0","0"]], "2" : [["0","0"],["0","0"],["0","0"],["0","0"]], "3" : [["0","0"],["0","0"],["0","0"],["0","0"]]}
var vsStore = {"S":["0","0"],"0":["0","0","0","0"],"1":["0","0","0","0"],"2":["0","0","0","0"],"3":["0","0","0","0"]}
onready var Ctrl = get_node("/root/Control/VBC/HBoxContainer/ControlBtns")
onready var W = get_node("/root/Control/VBC/HBoxContainer/ViewportContainer/Viewport/ViewportContainer/ViewWorld/World")
onready var StoreN = get_node("/root/Control/VBC/HBoxContainer/ControlBtns/Node2D/StoreR1/Store")
onready var VpVR = get_node("/root/Control/VBC/HBoxContainer/ViewportContainer2")
onready var Status = get_node("/root/Control/VBC/HBoxContainer/Status")
onready var vsStatus = get_node("/root/Control/VBC/ViewportContainer/Status2")
func _ready():
	randomize()
	set_physics_process(false)
	set_process(false)
	SvSt()
	StoreD["S"][6][2] = randi()%4
	res()
	if str(StoreD["S"][6][0]) == "1":
		var node2d = Ctrl.get_node("Node2D")
		Ctrl.remove_child(node2d)
		Ctrl.hide()
		get_node("/root/Control/VBC/ViewportContainer/").show()
		Ctrl = get_node("/root/Control/VBC/ViewportContainer/ControlBtns2")
		Ctrl.add_child(node2d)
		StoreN = Ctrl.get_node("Node2D/StoreR1/Store")
		Connection()
		host()
	reload()
	for i in Ctrl.get_tree().get_nodes_in_group("Button"):CI(i)
func res():
#	StoreD = {"S": ["0",["0"],["0",1],["1"],["1"],["0"],["1",0,0,0,[0,0],[1,4,2,5,3,4]]] ,"PuntMax" : 79 ,"Diamond":52, "0" : [["0","0"],["0","0"],["0","0"],["0","0"]], "1" : [["0","1"],["0","1"],["0","1"],["0","0"]], "2" : [["0","0"],["0","0"],["0","0"],["0","0"]], "3" : [["0","1"],["0","1"],["0","1"],["0","1"]]}
	save_store()
func SvSt():
	var file = File.new()
	if file.file_exists(StoreItems):
		load_store()
	else:
		save_store()
		load_store()
	Status.get_node("Sprite2/Label").set_text(str(StoreD["Diamond"]))
func save_store():
	var file = File.new()
	file.open_encrypted_with_pass(StoreItems,File.WRITE,password)
	file.store_var(StoreD)
	file.close()
	is_loadedSt = false
func load_store():
	if is_loadedSt:
		return
	var file = File.new()
	file.open_encrypted_with_pass(StoreItems,File.READ,password)
	StoreD = file.get_var()
	file.close()
	is_loadedSt = true
func reload():
#	if str(OS.get_name()) == "X11":
#		OS.set_screen_orientation(0)
#		OS.set_window_size(Vector2(1024,600))
#		Vec2 = Vector2(1920,1080)
#		W.get_parent().set_size(Vector2(Vec2.x/StoreD["S"][2][1],Vec2.y/StoreD["S"][2][1]))
#		Ctrl.get_node("LS").play("LS2")
	Status.get_node("Coins").set_text(str(StoreD["PuntMax"]))
	Status.get_node("Sprite2").show()
	Arm = 0
	Coin = 0
	VelR = -5
	VelIn = 2
	OnOff = false
	TF = false
#	W.get_node("Directions").global_transform = W.get_node(str("Dir",StoreD["S"][6][0],"/",randi()%W.get_node(str("Dir",StoreD["S"][6][0])).get_children().size())).global_transform
	if StoreD["S"][2][0] == "1":
		W.get_parent().set_size(Vector2(Vec2.x/StoreD["S"][2][1],Vec2.y/StoreD["S"][2][1]))
		StoreN.set_size(Vector2(Vec22.x/StoreD["S"][2][1],Vec22.y/StoreD["S"][2][1]))
		StoreN.get_node("../CS/Sprite").set_scale(Vector2(StoreD["S"][2][1],StoreD["S"][2][1]))
		StoreD["S"][6][2] = 4
	_tween("CS","1")
	if Sup == null:
		Player = PlayerIns[int(StoreD["S"][0])][StoreD["S"][6][2]].instance()
		var Ply = preload("res://Scenes/Player.tscn").instance()
		StoreN.add_child(Ply)
		StoreN.get_node("Player").add_child(Player)
		Rocket = RocketIns[int(str(StoreD["S"][1])[1])][StoreD["S"][6][2]].instance()
		StoreN.get_node("Player").add_child(Rocket)
		StoreN = Ctrl.get_node("Node2D/StoreR1/Store")
		PlayerA = Ctrl.get_node("/Node2D/StoreR1/Store/Player")
	else:W.change()
	PlayerC = preload("res://Scenes/Player0.tscn").instance()
	PlayerC.global_transform = W.get_node("Spatial0/Player").global_transform
	W.add_child(PlayerC)
	PlayerB = get_node("/root/Control/VBC/HBoxContainer/ViewportContainer/Viewport/ViewportContainer/ViewWorld/World/Player0/Player")
	Player0 = PlayerC
	RO()
	if StoreD["S"][6][0] == "1": Play2()
	Sup = 0
	Bas = get_node("/root/Control/VBC/HBoxContainer/ViewportContainer/Viewport/ViewportContainer/ViewWorld/World/Spatial0")
	C = Bas.get_node("Center")
	Cam = get_node("/root/Control/VBC/HBoxContainer/ViewportContainer/Viewport/ViewportContainer/ViewWorld/World/Camera")
	get_node("/root/Control/VBC/HBoxContainer/ViewportContainer/Viewport/ViewportContainer").set_mouse_filter(2)
	Status.get_node("Coins").set_modulate(Color(1.0,1.0,1.0,1.0))
	Status.get_node("Coins").get_font("font").outline_size = 8
	if VR == true : _ready_playerVR()
func Play2():
	PlayerD = preload("res://Scenes/Player1.tscn").instance()
	PlayerD.global_transform = W.get_node("Spatial1/Player").global_transform
	W.add_child(PlayerD)
	vsVelR = -5
	vsVelIn = 2
	vsSup = 0
	Player1 = W.get_node("Player1")
	Play2 = StoreN.get_node("../Store2")
	var Ply = preload("res://Scenes/Player.tscn").instance()
	Ply.rotation_degrees.y = 90
	Play2.add_child(Ply)
	vsPlay = PlayerIns[int(vsStore["S"][0])][StoreD["S"][6][2]].instance()
	Ply.add_child(vsPlay)
	vsRocket = RocketIns[int(vsStore["S"][1])][StoreD["S"][6][2]].instance()
	Ply.add_child(vsRocket)
	vsBas = get_node("/root/Control/VBC/HBoxContainer/ViewportContainer/Viewport/ViewportContainer/ViewWorld/World/Spatial1")
	vsC = vsBas.get_node("Center")
#	Play2.add_to_group("Player")
func _physics_process(delta):
	if StoreD["S"][0] == "0" : Player.get_node("AnimationTree").set("parameters/Blend3/blend_amount",.5)
	if Input.is_action_pressed("ui_left") : 
		left(delta,Bas)
	if Input.is_action_pressed("ui_right") : 
		right(delta,Bas)
	if StoreD["S"][6][0] == "0":
		if Input.is_action_just_pressed("ui_up") : Run(-15)
		if Input.is_action_just_released("ui_up") : Run(-5)
	if StoreD["S"][6][0] == "1" && S2 == true:
		if StoreD["S"][0] == "0" : Player.get_node("AnimationTree").set("parameters/Blend3/blend_amount",.5)
		if Input.is_action_pressed("L") : 
			left(delta,vsBas)
		if Input.is_action_pressed("R") : 
			right(delta,vsBas)
#		if Input.is_action_just_pressed("C") : vsRun(-15)
#		if Input.is_action_just_released("C") : vsRun(-5)
	else : Healt(delta)
	if VR == true:
		Cam.global_transform = PlayerB.get_node("../CameraVR").global_transform
		get_node("/root/Control/VBC/HBoxContainer/ViewportContainer2/Viewport/Camera").global_transform = PlayerB.get_node("../CameraVR/Camera2").global_transform
#		Cam.transform.basis.y = Input.get_accelerometer().y
		Ctrl.get_node("Label").set_text(str(Input.get_accelerometer()))
#		if TF == false:if Input.get_accelerometer().x <= 0 || Input.is_action_just_pressed("ui_up"):TF = true
#		else:
#			print("Hola")
		if OnOff == true:
			if Input.get_accelerometer().x <= -2 : Bas.global_transform.basis = Bas.get_node("Left").global_transform.basis
			if Input.get_accelerometer().x >= 2 : Bas.global_transform.basis = Bas.get_node("Right").global_transform.basis
			if Input.get_accelerometer().z <= 2 : Run(-5)
			if Input.get_accelerometer().z >= 2 : Run(-15)
		else:
			if Input.is_action_just_pressed("ui_accept") or Input.get_accelerometer().z >= 2 : 
				OnOff = true
				Player.hide()
				player(StoreD,StoreN,Player,PlayerA,PlayerB,Status)
func Run(Vl) : VelR = Vl
func vsRun(Vl) : vsVelR = Vl
func left(delta,bas):
	if StoreD["S"][0] == "0":Player.get_node("AnimationTree").set("parameters/Blend3/blend_amount",1)
	bas.global_transform.basis = bas.get_node("Left").global_transform.basis
	if vsSup == 2 or vsSup == 3 : bas.get_node("Player/Cam/Spatial").global_transform.basis = bas.get_node("Player/Cam/Spatial/L").global_transform.basis
	if VelCam.x <= 1:
		VelCam.x += 1*delta
		VelCam.z -= 1*delta
func right(delta,bas):
	if StoreD["S"][0] == "0":Player.get_node("AnimationTree").set("parameters/Blend3/blend_amount",0)
	bas.global_transform.basis = bas.get_node("Right").global_transform.basis
	if vsSup == 2 or vsSup == 3:bas.get_node("Player/Cam/Spatial").global_transform.basis = bas.get_node("Player/Cam/Spatial/R").global_transform.basis
	if VelCam.z <= 1:
		VelCam.x -= 1*delta
		VelCam.z += 1*delta
#func _input(event):
#	OS.set_screen_orientation(SCREEN_ORIENTATION_SENSOR)
#	Ctrl.get_node("Label").set_text(OS.get_screen_orientation())
#
#		OS.set_screen_orientation(sensor)
#		OS.set_screen_orientation(6)
func _process(delta):
	if StoreD["S"][6][0] == "1":
		Player1.global_transform = Player1.global_transform.interpolate_with(vsBas.get_node("Player").global_transform,vsVelIn*delta)
		if vsSup == 1 or vsSup == 4:
			vsCam.global_transform = vsCam.global_transform.interpolate_with(vsBas.get_node("Player/Cam/Spatial/L").global_transform,(vsVelCam.x*2)*delta)
			vsCam.global_transform = vsCam.global_transform.interpolate_with(vsBas.get_node("Player/Cam/Spatial/C").global_transform,(vsVelCam.y*5)*delta)
			vsCam.global_transform = vsCam.global_transform.interpolate_with(vsBas.get_node("Player/Cam/Spatial/R").global_transform,(vsVelCam.z*2)*delta)
			vsVelCam = vsVelCam.linear_interpolate(Vector3(0.0,1.0,0.0),10*delta)
			if S2 == true:
				vsC.rotation_degrees.x = vsVelR*delta
				vsBas.global_transform = vsC.global_transform
		elif vsSup == 2 or vsSup == 3:
			vsCam.global_transform = vsCam.global_transform.interpolate_with(vsBas.get_node("Player/Cam/Spatial/C").global_transform,(vsVelCam.y*5)*delta)
			vsBas.get_parent().set_offset(vsBas.get_parent().get_offset()+delta*vsVelR)
#	W.get_environment().background_color = W.get_environment().background_color.interpolate_with(Color( 0.0 , 0.65 , 1 , 1 ),Bas)
	Player0.global_transform = Player0.global_transform.interpolate_with(Bas.get_node("Player").global_transform,VelIn*delta)
	if Sup != 0:
			W.get_node("Camera").global_transform = W.get_node("Camera").global_transform.interpolate_with(Bas.get_node("Player/Cam/Spatial/L").global_transform,(VelCam.x*2)*delta)
			W.get_node("Camera").global_transform = W.get_node("Camera").global_transform.interpolate_with(Bas.get_node("Player/Cam/Spatial/C").global_transform,(VelCam.y*5)*delta)
			W.get_node("Camera").global_transform = W.get_node("Camera").global_transform.interpolate_with(Bas.get_node("Player/Cam/Spatial/R").global_transform,(VelCam.z*2)*delta)
			VelCam = VelCam.linear_interpolate(Vector3(0.0,1.0,0.0),10*delta)
	if Sup == 2 : Bas.get_parent().set_offset(Bas.get_parent().get_offset()+delta*VelR)
	if Sup == 1 || Sup == 4:
		C.rotation_degrees.x = VelR*delta
		Bas.global_transform = C.global_transform
		if Sup == 4 : Moon.get_node("AreaMoon").global_transform = Bas.get_node("Player").global_transform
func Healt(delta):
	Healt += .005*delta
	Status.get_node("Sprite").set_modulate(Color(1,1,1,Healt))
	Status.get_node("Sprite").set_scale(Vector2((Healt*2.5),(Healt*2.5)))
	if StoreD["S"][0] == "0":Player.get_node("AnimationTree").set("parameters/OneShot/active",true)
	if Healt <= 0:Healt = 0
	if Healt >= 1:
		Healt = 0
		Status.get_node("Sprite").set_modulate(Color(1,1,1,Healt))
		Status.get_node("Sprite").set_scale(Vector2((Healt*2.5),(Healt*2.5)))
		if StoreD["S"][6][2] != 4:StoreD["S"][6][2] = randi()%4
		Img = Ctrl.get_node("Node2D/StoreR2/CS2/Sprite")
		_Screen()
func vsGameOver(pl):
	for i in Ctrl.get_tree().get_nodes_in_group("Ctrl") : i.show()
	GameOver()
func _Screen():
	W.get_viewport().set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	var img = get_viewport().get_texture().get_data()
	img.flip_y()
	img.flip_x()
	var tex = ImageTexture.new()
	tex.create_from_image(img)
	Img.set_texture(tex)
	for i in Ctrl.get_tree().get_nodes_in_group("Ctrl"): i.show()
	GameOver()
	Img.set_scale(Vector2(.25,.25))
func GameOver():
	set_physics_process(false)
	set_process(false)
	Ctrl.get_node("0")._set_playing(false)
	Ctrl.get_node("3")._set_playing(false)
	Ctrl.get_node("TextureRect3").hide()
	W.get_node("Env").show()
	var NB = W.get_node("Player0/Player/Player")
	W.get_node("Player0/Player/").remove_child(NB)
	StoreN.add_child(NB)
	if StoreD["S"][6][0] == "0": _tween("CS2","2")
	else:
		NB = W.get_node("Player1/Player/Player")
		W.get_node("Player1/Player/").remove_child(NB)
		Play2.add_child(NB)
	W.get_node("Player0").free()
	if StoreD["S"][6][0] == "1": W.get_node("Player1").free()
	reload()
func _collision(col,bd,sup,vi,bas,vr,en):
	match col.get_parent().name:
		"Env" : day(col)
		"RCol","RCol2" : Rope(col,bd,sup,vi,bas,vr,en)
		"Recua" : Recua(col,bd)
		"Tower", "House", "House2" : Tower(col,bd)
		"Castle" : Castle(col,bd)
		"Coin" : Coin(col)
		"Ruby" : Ruby(col)
		"Power" : Power(col)
		"Star" : Star(col)
		"Obs" : Obs()
		"Mountain" : Mountain(col,bd,sup,vi,bas,vr,en)
		"Fence" : Fence(col,bd,sup,vi,bas,vr)
		"Exit","Exit2": Exit(col,bd,sup,bas,en)
func _collision_exit(col,bd,sup,vi,bas,vr):
	match col.get_parent().name:
		"Env" : night(col)
func Obs():Healt += rand_range(.08,.05)
func Exit(col,bd,sup,bs,en):
	if Sup == 4:
		Ctrl.get_node("TextureRect3").hide()
		W.get_node("Env").show()
		bd.get_node("MI").hide()
		Ctrl.get_node("3")._set_playing(false)
		Ctrl.get_node("0")._set_playing(int(Base.StoreD["S"][3][0]))
	if bd.name == "Player0":
		Bas = W.get_node("Spatial0")
		Player0.Bas = Bas
		VelR = -5
		VelIn = 2
		Sup = 1
		C = Bas.get_node("Center")
		Enter = ""
		print("0")
	if bd.name == "Player1":
		vsBas = W.get_node("Spatial1")
		Player1.Bas = vsBas
		vsVelR = -5
		vsVelIn = 2
		vsSup = 1
		vsC = vsBas.get_node("Center")
		vsEnter = ""
		print("1")
#	bs.global_transform.basis = col.global_transform.basis
	bd.set_mode(2)
#	if Sup == 2:bd.global_transform = col.global_transform
	yield(get_tree().create_timer(2), "timeout")
	for i in W.get_tree().get_nodes_in_group("Rope"):i.set_disabled(false)
	Bas.get_node("Player").rotation_degrees.y = 0
	print("Exit")
func Fence(col,bd,sup,vi,bas,vr):
	if sup != 0:
		bas.global_transform.basis = col.get_node("Spatial").global_transform.basis
func Star(col):
	col.get_node("../../").hide()
	Obs()
func Power(col):
	col.get_node("../AudioStreamPlayer3D")._set_playing(int(Base.StoreD["S"][4][0]))
	col.get_node("../AnimationPlayer").play("Take")
	yield(col.get_node("../AudioStreamPlayer3D"),"finished")
	col.get_parent().queue_free()
	Healt -= .25
func Coin(col):
	col.get_node("../AudioStreamPlayer3D")._set_playing(int(Base.StoreD["S"][4][0]))
	col.get_node("../AnimationPlayer").play("Take")
	Coin += 1
	if Coin >= Diamond:
		Diamond += 5
		Diamond()
	Status.get_node("Coins").set_text(str(Coin))
	if Coin >= StoreD["PuntMax"]:
		StoreD["PuntMax"] = Coin
		save_store()
		if PuntMax == false:
			Status.get_node("Coins").set_modulate(Color(0.98,0.0,1.0,1.0))
			Status.get_node("Coins").get_font("font").outline_size = 16#color = Color(1.0,1.0,1.0,1)
			PuntMax = true
	yield(col.get_node("../AudioStreamPlayer3D"),"finished")
	col.get_parent().queue_free()
func Ruby(col):
	col.get_node("../AudioStreamPlayer3D")._set_playing(int(Base.StoreD["S"][4][0]))
	col.get_node("../AnimationPlayer").play("Take")
	Diamond()
	yield(col.get_node("../AudioStreamPlayer3D"),"finished")
	col.get_parent().queue_free()
func Diamond():
	Arm += .5
	match Arm:
		1,2,3,4,5:
			Rocket.get_node("AnimationPlayer").play(str(Arm))
	StoreD["Diamond"] += 1
	save_store()
	Status.get_node("Sprite2").show()
	Status.get_node("Sprite2/Label").set_text(str(StoreD["Diamond"]))
	yield(get_tree().create_timer(2.0), "timeout")
	Status.get_node("Sprite2").hide()
func Castle(col,bd):
	if col.name == "0":
		bd.set_mode(1)
		Bas = Moon.get_node("Directions2")
		C = Bas.get_node("Center")
		col.get_node("../0/Area/CollisionShape").set_disabled(false)
		Moon.get_node("BlueMoon/StaticBody/CollisionShape").set_disabled(false)
		W.get_node("Camera/Camera").transform.origin.y = 6
	else:
		bd.set_mode(2)
		Bas = Moon.get_node("Directions")
		C = Bas.get_node("Center")
		col.get_node("../1/Area/CollisionShape").set_disabled(false)
		Moon.get_node("BlueMoon/StaticBody/CollisionShape").set_disabled(true)
		W.get_node("Camera/Camera").transform.origin.y = 0
#	yield(get_tree().create_timer(2),"timeout")
#	col.get_node(str("../",col.name,"/Area/CollisionShape")).set_disabled(true)
func Mountain(col,bd,sup,vi,bs,vr,en):
	if sup == 1 && en == "":
		bd.set_mode(1)
		for i in col.get_node("../StaticBody").get_children():i.set_disabled(true)
		for i in get_tree().get_nodes_in_group("Rope"):i.set_disabled(true)
		if bd.name == "Player0":
			Bas = col.get_node("../Curve/PathFollow/Spatial")
			Player0.Bas = Bas
			Sup = 3
			VelIn = 5
			Bas.get_parent().set_offset(int(col.name))
			Enter = "0"
		else:
			vsBas = col.get_node("../Curve2/PathFollow/Spatial")
			Player1.Bas = vsBas
			vsSup = 3
			vsVelIn = 5
			vsBas.get_parent().set_offset(int(col.name))
			vsEnter = "0"
		col.get_node("../Curve/Anim").play(col.name)
		yield(col.get_node("../Curve/Anim"),"animation_finished")
		if bd.name == "Player0":
			Bas = W.get_node("Spatial0")
			Player0.Bas = Bas
			Sup = 1
			VelIn = 2
			Bas.global_transform.basis = col.get_node(str("../",col.get_node("Area").get_child(0).name)).global_transform.basis
			Enter = ""
		else:
			vsBas = W.get_node("Spatial1")
			Player1.Bas = vsBas
			vsSup = 1
			vsVelIn = 2
			vsBas.global_transform.basis = col.get_node(str("../",col.get_node("Area").get_child(0).name)).global_transform.basis
			vsEnter = ""
		bd.set_mode(2)
		yield(col.get_tree().create_timer(4),"timeout")
		if Sup != 0:
			for i in col.get_node("../StaticBody").get_children():i.set_disabled(false)
			for i in get_tree().get_nodes_in_group("Rope"):i.set_disabled(false)
func Tower(Col,bd):
	bd.set_mode(1)
	set_process(false)
	set_physics_process(false)
	var Tw = {}
	var CnTw = 0
	var RT = randi()%24+1
	var R
	if Col.get_parent().name == "House" || Col.get_parent().name == "House2":
		for i in W.get_tree().get_nodes_in_group("House"):
			Tw[CnTw] = i
			CnTw += 1
		R = randi()%Tw.size()
		Bas.global_transform.basis = Tw[R].get_node(str("1")).global_transform.basis
		bd.global_transform = Tw[R].get_node(str("1/Spatial")).global_transform
	else:
		bd.global_transform.basis = Col.get_node(str("../",RT,"/Spatial")).global_transform.basis
		Bas.global_transform.basis = Col.get_node(str("../",RT)).global_transform.basis
	Cam.global_transform = bd.get_node("Camera2").global_transform
	set_physics_process(true)
	set_process(true)
	bd.set_mode(2)
func Recua(Col,bd):
	for i in W.get_tree().get_nodes_in_group("Rope"):i.set_disabled(true)
	if time == 1:
		Sup = 4
		Ctrl.get_node("0")._set_playing(false)
		Ctrl.get_node("3")._set_playing(int(Base.StoreD["S"][3][0]))
		Col.get_node("Recua/AnimationPlayer").play("ArmatureAction")
		Bas = Moon.get_node("Directions")
		C = Bas.get_node("Center")
		yield(Col.get_node("Recua/AnimationPlayer"), "animation_finished")
		Ctrl.get_node("TextureRect3").show()
		W.get_node("Env").hide()
		bd.get_node("MI").show()
	else:
		bd.set_mode(1)
		Sup = 5
		W.get_node("Space").space()
		Bas = W.get_node("Space/Directions")
		Col.get_node("Recua/AnimationPlayer").play("ArmatureAction")
		yield(Col.get_node("Recua/AnimationPlayer"),"animation_finished")
		W.get_node("Space/Anim").play("Space")
		yield(W.get_node("Space/Anim"),"animation_finished")
		if Sup != 0:
			Sup = 1
			Bas = W.get_node("Spatial0")
			bd.set_mode(2)
			yield(get_tree().create_timer(3),"timeout")
		for i in W.get_tree().get_nodes_in_group("Rope"):i.set_disabled(false)
func Rope(col,bd,sup,vi,bs,vr,en):
	if en == "" && sup == 1:
		vi = 4
		bd.set_mode(1)
		if StoreD["S"][6][0] == "0":
			if col.get_parent().name == "RCol":
				Bas = col.get_node("../../Curve/PathFollow/Spatial")
				bs = Bas
				Sup = 2
				for i in col.get_node("../../RCol").get_children():i.get_node("Area/CollisionShape").set_disabled(true)
				for i in col.get_node("../../RCol2").get_children():i.get_node("Area/CollisionShape").set_disabled(false)
			else:
				Bas = col.get_node("../../Curve2/PathFollow/Spatial")
				bs = Bas
				Sup = 2
				for i in col.get_node("../../RCol2").get_children():i.get_node("Area/CollisionShape").set_disabled(true)
				for i in col.get_node("../../RCol").get_children():i.get_node("Area/CollisionShape").set_disabled(false)
		else:
			if bd.name == "Player0":
				Bas = col.get_node("../../Curve/PathFollow/Spatial")
				bs = Bas
				Player0.Bas = Bas
				Sup = 2
				Enter = "0"
			else:
				vsBas = col.get_node("../../Curve2/PathFollow/Spatial")
				bs = vsBas
				Player1.Bas = vsBas
				vsSup = 2
				vsEnter = "0"
#			for i in col.get_node("../../RCol").get_children():i.get_node("Area/CollisionShape").set_disabled(true)
		bs.get_parent().set_offset(int(col.name))
		if col.get_node("Area/CollisionShape").rotation_degrees.y == 0:
			vr = -5
			Bas.get_node("Player").rotation_degrees.y = 180
		else:
			vr = 5
			Bas.get_node("Player").rotation_degrees.y = 0
		bs.global_transform = col.get_node("Area/CollisionShape").global_transform
		bs.get_node("Area").set_gravity_is_point(true)
var time = 0
func day(Col):
	Col.get_node("Day").show()
	W.get_environment().background_color = Color( 0.0 , 0.65 , 1 , 1 )
	W.get_environment().glow_strength = 1.1
	Col.get_node("Night").hide()
	time = 0
func night(Col):
	Col.get_node("Night").show()
	W.get_environment().background_color = Color( 0.05 , 0.05 , 0.24 , 1 )
	W.get_environment().glow_strength = 1.4
	Col.get_node("Day").hide()
	time = 1
func _button(button):
	match button.get_parent().name[0]:
		"0" : 
			Ctrl.get_node("1")._set_playing(int(Base.StoreD["S"][4][0]))
			match str(button.name[0],button.name[1]):
				"Pl": _ready_player("0")
				"VR": LS()
				"0S":
					SH(button)
					ChangeButton(button,"../../2/","2",StoreD)
				"0C":SH(button)
				"M6":multi(button)
		"1" : match button.get_name()[0]:
				"1": SH(button)
				"M": sound(button,3)
				"C": change(button)
				"S": sound(button,4)
		"2" : match button.get_name()[0]:
				"2": SH(button)
				"P": _Splayer(button)
				"R":Store(button,"S")
		"S" : match button.get_name()[0]:
				"O": Store(button,StoreD["S"][0])
		"4" : match button.get_name()[0]:
				"4": SH(button)
				"P": _SvsPlayer(button)
				"R":Store(button,"S")
		"s" : match button.get_name()[0]:
				"O": Objects2(button)
		"3" :
			Ctrl.get_node("1")._set_playing(int(Base.StoreD["S"][4][0]))
			match str(button.name[0],button.name[1]):
				"Pl": _ready_player("1")
				"3S":
					SH(button)
					ChangeButton(button,"../../4/","4",vsStore)
func LS():
	if OS.get_name() == "X11":
		if OS.window_fullscreen == true:
			OS.window_fullscreen = false
#			W.get_parent().set_size(Vector2(OS.get_screen_size()/(StoreD["S"][2][1])))#,Vec2.y/StoreD["S"][2][1]))
#			W.get_node("../../../").set_size(Vector2(OS.get_screen_size()/(StoreD["S"][2][1])))
		else:
			OS.window_fullscreen = true
#			W.get_parent().set_size(Vector2(OS.get_screen_size()/(StoreD["S"][2][1])))#,Vec2.y/StoreD["S"][2][1]))
#			W.get_node("../../../").set_size(Vector2(OS.get_screen_size()/(StoreD["S"][2][1])))
	else:
		_ready_playerVR()
func _SvsPlayer(button):
	Ctrl.get_node("1")._set_playing(int(Base.StoreD["S"][4][0]))
	vsStore["S"][0] = button.name[1]
	_tween("CS2","2")
	vsPlay.free()
	vsPlay = PlayerIns[int(vsStore["S"][0])][StoreD["S"][6][2]].instance()
	Play2.add_child(vsPlay)
	var ctd = 0
	for i in vsStore[vsStore["S"][0]]:
		if int(str(i)) == 1 : vsPlay.get_node(str("Esqueleto/",vsStore["S"][0])).add_child(St[int(vsStore["S"][0])][ctd][StoreD["S"][6][2]].instance())
		ctd+=1
	ChangeButton(button,"../","4",vsStore)
	Ctrl.get_node("AnimationPlayer").play(str(vsStore["S"][0],vsStore["S"][0]))
func Objects2(button):
	if StoreD[vsStore["S"][0]][int(button.name[1])][1] == "1":
		if vsStore[vsStore["S"][0]][int(button.name[1])][0] == "0" :
			vsStore[vsStore["S"][0]][int(button.name[1])][0] = "1"
			vsPlay.get_node(str("Esqueleto/",vsStore["S"][0])).add_child(St[int(vsStore["S"][0])][int(button.name[1])][StoreD["S"][6][2]].instance())
		else:
			vsStore[vsStore["S"][0]][int(button.name[1])][0] = "0"
			vsPlay.get_node(str("Esqueleto/",vsStore["S"][0],"/",button.name[1])).free()
func multi(button):
	if str(StoreD["S"][6][0]) == "0":
		get_node("/root/Control/VBC/ViewportContainer/").show()
		var node2d = Ctrl.get_node("Node2D")
		Ctrl.remove_child(node2d)
		Ctrl.hide()
		Ctrl = get_node("/root/Control/VBC/ViewportContainer/ControlBtns2")
		Ctrl.add_child(node2d)
		Play2()
		Connection()
		host()
	else:
		for i in StoreN.get_node("../Store2").get_children():if i.name[0] != "s" && i.name[0] != "d" : i.free()
		get_node("/root/Control/VBC/ViewportContainer/").hide()
		var node2d = Ctrl.get_node("Node2D")
		Ctrl.remove_child(node2d)
		Ctrl = get_node("/root/Control/VBC/HBoxContainer/ControlBtns")
		Ctrl.show()
		Ctrl.add_child(node2d)
		StoreN = Ctrl.get_node("Node2D/StoreR1/Store")
		_connected_fail()
	TF(button,"S")
	CI(button)
	W.change()
#	GameOver()
#	for i in StoreN.get_tree().get_nodes_in_group("Players") : i.free()
#	Player = PlayerIns[int(StoreD["S"][0])][StoreD["S"][6][2]].instance()
#	StoreN.get_node("Player").add_child(Player)
#	RO()
func _player_connected(_id):
	#someone connected, start the game!
	# connect deferred so we can safely erase it from the callback
	W.connect("game_finished", self, "_end_game", [], CONNECT_DEFERRED)
	W.start()
	get_node("/root/Control/VBC/ViewportContainer/").hide()
func _player_disconnected(_id):
	if get_tree().is_network_server():
		_end_game("Client disconnected")
	else:
		_end_game("Server disconnected")
# callback from SceneTree, only for clients (not server)
func _connected_ok():
	# will not use this one
	pass
# callback from SceneTree, only for clients (not server)	
func _connected_fail():
#	_set_status("Couldn't connect",false)
	get_tree().set_network_peer(null) #remove peer
#	get_node("panel/join").set_disabled(false)
#	get_node("panel/host").set_disabled(false)
func _server_disconnected():
	_end_game("Server disconnected")
##### Game creation functions ######
func _end_game(with_error=""):
	if has_node(W):
		#erase pong scene
		GameOver()
	get_tree().set_network_peer(null)
	pass
func _on_host_pressed():host()
func host():
	var host = NetworkedMultiplayerENet.new()
	host.set_compression_mode(NetworkedMultiplayerENet.COMPRESS_RANGE_CODER)
	var err = host.create_server(DEFAULT_PORT, 1) # max: 1 peer, since it's a 2 players game
	if err != OK:
		#is another server running?
#		_set_status("Can't host, address in use.",false)
		return
	get_tree().set_network_peer(host)
#	_set_status("Waiting for player..", true)
func _on_join_pressed():join()
func join():
	ip = str(Ip,Ctrl.get_node("Control/TextEdit").get_text())
	prints(ip,IP.get_local_addresses()[0])
	if not ip.is_valid_ip_address():
#		_set_status("IP address is invalid", false)
		return
	var host = NetworkedMultiplayerENet.new()
	host.set_compression_mode(NetworkedMultiplayerENet.COMPRESS_RANGE_CODER)
	host.create_client(ip, DEFAULT_PORT)
	get_tree().set_network_peer(host)
#	_set_status("Connecting..", true)
func MC():
	_connected_fail()
	join()
### INITIALIZER ####
var ip = ""
var Ip = ""
func Connection():
	# connect all the callbacks related to networking
	get_tree().connect("network_peer_connected", self, "_player_connected")
	get_tree().connect("network_peer_disconnected", self, "_player_disconnected")
	get_tree().connect("connected_to_server", self, "_connected_ok")
	get_tree().connect("connection_failed", self, "_connected_fail")
	get_tree().connect("server_disconnected", self, "_server_disconnected")
	if Ip == "":
		for i in IP.get_local_addresses()[0]:
			if Ct >= 4:IPB = str(IPB,i)
			else:
				Ip = str(Ip,i)
				if i == "." : Ct += 1
				if Ct >= 3 : Ct += 1
		Ctrl.get_node("Control/TextEdit").set_text(IPB)
#	naka()
func _Splayer(button):
	Ctrl.get_node("1")._set_playing(int(Base.StoreD["S"][4][0]))
	StoreD["S"][0] = button.name[1]
	_tween("CS","1")
	Player.free()
	Player = PlayerIns[int(StoreD["S"][0])][StoreD["S"][6][2]].instance()
	StoreN.get_node("Player").add_child(Player)
	RO()
	ChangeButton(button,"../","2",StoreD)
	Ctrl.get_node("AnimationPlayer").play(StoreD["S"][0])
	save_store()
func ChangeButton(button,string,vs,dic):
	for i in 4:
		button.get_node(str(string,"P",i,"0/Button/0")).hide()
		button.get_node(str(string,"P",i,"0/Button/1")).show()
	Ctrl.get_node(str("Control/",vs,"/P",dic["S"][0],"0/Button/0")).show()
	Ctrl.get_node(str("Control/",vs,"/P",dic["S"][0],"0/Button/1")).hide()
func SRocket(button):
	Rocket.free()
	Rocket = RocketIns[int(str(StoreD["S"][1])[1])][StoreD["S"][6][2]].instance()
	StoreN.get_node("Player").add_child(Rocket)
	save_store()
func _tween(img,n):
	Ctrl.get_node(str("Node2D/StoreR",n,"/Tween",n)).interpolate_property(Ctrl.get_node(str("Node2D/StoreR",n,"/",img)), "scale",Vector2(0,0),Vector2(1,1),.5, Tween.TRANS_LINEAR, Tween.EASE_IN)
	Ctrl.get_node(str("Node2D/StoreR",n,"/Tween",n)).start()
func Store(button0,fn):
	button = button0
	fnc = StoreD[fn][int(button.name[1])][1]
	if fnc == "1":
		match button.name[0]:
			"O":
				TF(button,StoreD["S"][0])
				CI(button)
				Objects(button)
			"R":
				TF(button,"S")
				CI(button)
				SRocket(button)
	if fnc == "0":
		Ctrl.get_node("TextureProgress").show()
		Ctrl.get_node("TextureProgress/Label").set_text(button.get_child(0).name)
		if StoreD["Diamond"] >= int(button.get_child(0).name):
			Ctrl.get_node("Tween").interpolate_property(Ctrl.get_node("TextureProgress"),"value",0,100,3.0,Tween.TRANS_LINEAR,Tween.EASE_IN)
			Ctrl.get_node("Tween").start()
func Objects(button):
	if StoreD[StoreD["S"][0]][int(button.name[1])][0] == "1" :
		Player.get_node(str("Esqueleto/",StoreD["S"][0])).add_child(St[int(StoreD["S"][0])][int(button.name[1])][StoreD["S"][6][2]].instance())
	else:
		Player.get_node(str("Esqueleto/",StoreD["S"][0],"/",button.name[1])).free()
func _tween2():
	match button.name[0]:
		"O":
			TF(button,StoreD["S"][0])
			CI(button)
			Objects(button)
		"R":
			TF(button,"S")
			CI(button)
			SRocket(button)
	StoreD[StoreD["S"][0]][int(button.name[1])][1] = "1"
	StoreD["Diamond"] -= int(button.get_child(0).name)
	Status.get_node("Sprite2/Label").set_text(str(StoreD["Diamond"]))
	Ctrl.get_node("TextureProgress").hide()
	save_store()
func _tweenS():
	Ctrl.get_node("Tween").stop_all()
	Ctrl.get_node("TextureProgress").hide()
func TF(button,dic):
	Ctrl.get_node("1")._set_playing(int(Base.StoreD["S"][4][0]))
	if str(StoreD[dic][int(button.name[1])][0]) == "0" : StoreD[dic][int(button.name[1])][0] = "1"
	else : StoreD[dic][int(button.name[1])][0] = "0"
	save_store()
func CI(button):
	button.get_node("Button").set_normal_texture(img[int(StoreD[button.name[2]][int(button.name[1])][0])])
	for i in button.get_node("Button").get_children() : i.hide()
	button.get_node(str("Button/",StoreD[button.name[2]][int(button.name[1])][0])).show()
func RO():
	var ctd = 0
	for i in StoreD[StoreD["S"][0]]:
		if int(str(i)[1]) == 1 : Player.get_node(str("Esqueleto/",StoreD["S"][0])).add_child(St[int(StoreD["S"][0])][ctd][StoreD["S"][6][2]].instance())
		ctd+=1
func SH(button):
	Ctrl.get_node("1")._set_playing(int(StoreD["S"][4][0]))
	button.get_node(str("../../",button.get_name()[0])).hide()
	button.get_node(str("../../",button.get_name()[2])).show()
#	SaveCtrl()
#func SaveCtrl():
#	var packed_scene = PackedScene.new()
#	packed_scene.pack(Ctrl)
#	ResourceSaver.save("res://Scenes/ControlBtns.tscn", packed_scene)
var new = ""
var S2 = false
func _ready_player(Nm):
	if str(StoreD["S"][6][0]) == "0":
		start()
	else:
		new = str(new,Nm)
		match new:
			"01","10":
				vsStart()
				start()
				vsSup = 1
				new = ""
				S2 = true
func vsStart():
	player(vsStore,Play2,vsPlay,Ctrl.get_node("/Node2D/StoreR1/Store2/Player"),get_node("/root/Control/VBC/HBoxContainer/ViewportContainer/Viewport/ViewportContainer/ViewWorld/World/Player1/Player"),vsStatus)
	nodecam = W.get_node("Player1/Camera")
	vsCam.S2M()
func start():
	player(StoreD,StoreN,Player,PlayerA,PlayerB,Status)
#	Player.get_node("../../").global_transform = Bas.get_node("Player").global_transform
	for i in Ctrl.get_tree().get_nodes_in_group("Ctrl"): i.hide()
	Ctrl.get_node("0")._set_playing(int(Base.StoreD["S"][3][0]))
	if StoreD["S"][6][0] == "0":
		get_node("/root/Control/VBC/HBoxContainer/ViewportContainer/Viewport/ViewportContainer").set_mouse_filter(0)
	set_physics_process(true)
	set_process(true)
func player(dic,SN,P,PA,PB,St):
	if dic["S"][0] == "0" : P.get_node("AnimationTree").set("parameters/Blend/blend_amount",1)
	var ch = SN.get_node("Player")
	SN.remove_child(ch)
	PB.add_child(ch)
	Sup = 1
	St.get_node("Coins").set_text(str(Coin))
	St.get_node("Sprite2").hide()
func _ready_playerVR():
	if Base.VR == false : Status.hide()
	Status = Ctrl.get_node("Viewport/Status")
	Ctrl.get_node("ControlVR").show()
	for i in Ctrl.get_tree().get_nodes_in_group("Ctrl"): i.hide()
	VpVR.show()
	VR = true
	Status.get_node("../TextureRect5").show()
#	Cam.set_interpolation_enabled(false)
	OS.set_screen_orientation(0)
	OS.set_window_size(Vector2(1024,600))
	if int(Ctrl.get_node("Control/1").get_child(2).name[2]) == 1 : W.get_node("/root/Control/HBoxContainer/ViewportContainer2/Viewport").set_size(Vector2(Vec2.x/int(Ctrl.get_node("Control/1").get_child(2).name[1]),Vec2.y/int(Ctrl.get_node("Control/1").get_child(2).name[1])))
	set_physics_process(true)
	set_process(true)
	Cam.get_node("Camera").fov = 100
func VR_Cancel():
	Cam.get_node("Camera").fov = 70
	set_physics_process(false)
#	Cam.set_interpolation_enabled(true)
	OS.set_screen_orientation(1)
	OS.set_window_size(Vector2(600,1024))
	Status = get_node("/root/Control/VBC/HBoxContainer/Status")
	Status.show()
	Ctrl.get_node("ControlVR").hide()
	for i in Ctrl.get_tree().get_nodes_in_group("Ctrl"): i.show()
	VpVR.hide()
	VR = false
func sound(button,sn):
	TF(button,"S")
	CI(button)
func change(button):
	if StoreD["S"][2][1] == 1:
		StoreD["S"][6][2] = 4
		StoreD["S"][2][1] = 10
	else:
		StoreD["S"][6][2] = 0
		StoreD["S"][2][1] = 1
	W.get_parent().set_size(Vector2(Vec2.x/StoreD["S"][2][1],Vec2.y/StoreD["S"][2][1]))
	StoreN.set_size(Vector2(Vec22.x/StoreD["S"][2][1],Vec22.y/StoreD["S"][2][1]))
	StoreN.get_node("../CS/Sprite").set_scale(Vector2(StoreD["S"][2][1],StoreD["S"][2][1]))
	GameOver()
	for i in get_tree().get_nodes_in_group("Players") : i.free()
	Player = PlayerIns[int(StoreD["S"][0])][StoreD["S"][6][2]].instance()
	StoreN.get_node("Player").add_child(Player)
	RO()
	TF(button,"S")
	CI(button)
