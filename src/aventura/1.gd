extends "res://src/motor.gd"

func _ready():
	TAMANO_PANTALLA_X = 2000
	TAMANO_PANTALLA_Y = 1200
	tapizar()
	for i in range(30):
		addInsecto(450,250)
	pass


func _on_exit_body_entered(body):
	if body == $jugador:
		$animacion.play('logrado')
		$logrado_popup.rect_position = get_node("jugador").position
		$logrado_popup.show()


func _on_siguiente_pressed():
	get_tree().change_scene("res://escenas/menu_aventura.tscn")


func _on_return_pressed():
	get_tree().change_scene("res://escenas/menu_aventura.tscn")
