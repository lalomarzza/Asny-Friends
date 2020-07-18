extends Spatial

var Obs
var Vel = 4
var Cont = 1
var RCont = 1

func _ready():
	pass # Replace with function body.

func _process(delta):
	$Curve2/PathFollow.set_offset($Curve2/PathFollow.get_offset()+Vel*delta)
	if $Curve2/PathFollow.get_offset() >= Cont:
		Obs = preload("res://Scenes/Rope/Ob.tscn").instance()
		Obs.global_transform = $Curve2/PathFollow.global_transform
		Obs.name = str(Cont)
		$Obs.add_child(Obs)
		Obs.set_owner($Obs)
		Cont += 5
	if $Curve2/PathFollow.get_unit_offset() == 1:
		print("Hola")
		var packed_scene = PackedScene.new()
		packed_scene.pack($Obs)
		ResourceSaver.save("res://Scenes/Rope/RopeObs.tscn", packed_scene)
		set_process(false)
