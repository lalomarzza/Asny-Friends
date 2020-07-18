extends Spatial

var Bas

func _ready():
	if self.name == "Player0":Bas = Base.Bas
	else:Bas = Base.vsBas
