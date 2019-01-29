extends Area2D

var disparando = false

func _ready():
	pass
func disparar():
	var nuevo = duplicate()
	get_parent().add_child(nuevo)
	nuevo.disparando = true

func _process(delta):
	if disparando:
		position += Vector2(50,0).rotated(rotation)
		if global_position.x > 1200 or global_position.x < -100:
			queue_free()
		if global_position.y > 700 or global_position.y < -100:
			queue_free()
		print(global_position)