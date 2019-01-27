extends Node


func _ready():
	pass

func on_salir():
	get_tree().quit()

func on_super():
	get_tree().change_scene("res://escenas/supervivencia.tscn")

func _on_aventura():
	get_tree().change_scene("res://escenas/menu_aventura.tscn")

func _on_como():
	$MarginContainer/como_popup.show()

func _on_como_hide():
	$MarginContainer/como_popup.hide()
