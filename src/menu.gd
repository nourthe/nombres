extends Node


func _ready():
	pass

func on_salir():
	get_tree().quit()

func on_super():
	get_tree().change_scene("res://escenas/supervivencia.tscn")
