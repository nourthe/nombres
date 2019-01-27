extends Node

var super_high_score = 0
var super_last_score = 0

func _ready():
	pass
func return_menu():
	get_tree().change_scene("res://escenas/menu.tscn")