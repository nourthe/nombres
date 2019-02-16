extends Popup

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#func _process(delta):
		
func _input(event):
	if Input.is_action_pressed('pause'):
		visible = !visible
		get_tree().paused = visible
		rect_position = get_parent().get_node("jugador").position

func reanudar():
	if get_parent().has_method("reanudar"):
		get_parent().reanudar()

func _on_unpause_pressed():
	reanudar()


func _on_return_menu_pressed():
	reanudar()
	global.return_menu()


func _on_seleccion_pressed():
	reanudar()
	global.return_av_menu()
