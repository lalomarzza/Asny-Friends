extends Spatial
var Power = [preload("res://Scenes/PowerUp/Coin.tscn"),preload("res://Scenes/PowerUp/Coin.tscn"),preload("res://Scenes/PowerUp/Coin.tscn"),preload("res://Scenes/PowerUp/Heart.tscn")]
var Coin
var Rn = 0
var R = 0
func _ready():
	randomize()
	Spawn()
func Spawn():
	Rn = round(rand_range(4,0))
	R = round(rand_range(4,3))
	for i in R:
		Coin = Power[randi()%Power.size()].instance()
		get_child(Rn).add_child(Coin)
		Rn = round(rand_range(4,0))
		while get_child(Rn).get_children().size() != 0:
			Rn = round(rand_range(4,0))

func _on_Area_body_entered(body):
	if body.is_in_group("Obst"):
		body.get_node("../../").queue_free()
