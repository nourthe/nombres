extends Node

func _ready():
	get_node("intro").play("mueve_bola")
	pass

func on_intro_end(anim_name):
	get_tree().change_scene("res://escenas/menu.tscn")
