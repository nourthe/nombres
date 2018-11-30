extends Node

var TAMANO_PANTALLA_X = 1024
var TAMANO_PANTALLA_Y = 600

var objetos
var jugador

func _ready():
	leerObjetos()
	
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

#Añade un insecto en la posicion (posX,posY)
func addInsecto(posX, posY):
	print("añadido")
	var ins = preload("res://objects/insecto.tscn").instance()
	add_child(ins)
	
	
#Añade un insecto en una posicion aleatoria
func addRandInsecto():
	var x = rand_range(0,TAMANO_PANTALLA_X)
	var y = rand_range(0,TAMANO_PANTALLA_Y)	
	addInsecto(x,y)