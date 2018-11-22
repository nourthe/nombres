extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	get_node("intro").play("mueve_bola")
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func on_intro_end(anim_name):
	get_tree().change_scene("res://menu.tscn")
