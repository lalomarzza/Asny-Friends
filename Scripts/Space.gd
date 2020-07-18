extends Spatial

var d = 0
var c = 0

func _ready():
	randomize()

func space():
	d = randi()%10+5
	for a in get_node("Spatial").get_children():
		a.rotation_degrees.z = randi()%360+1
		a.show()
		if c == d:
			d = randi()%10+5
			a.get_node("Star/Area/Position3D").add_child(load("res://Scenes/PowerUp/Ruby.tscn").instance())
		c += 1
