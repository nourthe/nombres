extends "res://src/motor.gd"

func _ready():
	TAMANO_PANTALLA_X = 2000
	TAMANO_PANTALLA_Y = 1200
	tapizar()
	for i in range(30):
		addInsecto(450,250)
	pass
