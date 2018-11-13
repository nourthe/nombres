extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var TAMANO_PANTALLA_X = 1024
var TAMANO_PANTALLA_Y = 600

var objetos

func _ready():
	leerObjetos()
	pass
	
func leerObjetos():
	objetos = get_children()

func _process(delta):
	for objeto in objetos:
		if objeto.get_class() == "KinematicBody2D":
			comprobarPosicion(objeto)
	
	
	
func comprobarPosicion(obj):
	if obj.position.x >TAMANO_PANTALLA_X:
		obj.position.x = 0
	elif obj.position.x < 0:
		obj.position.x = TAMANO_PANTALLA_X
	elif obj.position.y > TAMANO_PANTALLA_Y:
		obj.position.y = 0
	elif obj.position.y < 0:
		obj.position.y = TAMANO_PANTALLA_Y
