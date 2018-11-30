extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var TAMANO_PANTALLA_X = 1024
var TAMANO_PANTALLA_Y = 600

# Duracion de cada etapa en segundos
var DURACION_ETAPA = 10



var objetos
var jugador
var etapa

func _ready():
	leerObjetos()
	jugador = $jugador
	jugador.puntos = 0
	etapa = 1
	pass
	
func leerObjetos():
	objetos = get_children()

func _process(delta):
	for objeto in objetos:
		if objeto.get_class() == "KinematicBody2D":
			comprobarPosicion(objeto)
	actualizarTextos()
	
	jugador.puntos += delta
	if jugador.puntos >= etapa*DURACION_ETAPA :
		addInsecto()
		etapa += 1
	
func comprobarPosicion(obj):
	if obj.position.x >TAMANO_PANTALLA_X:
		obj.position.x = 0
	elif obj.position.x < 0:
		obj.position.x = TAMANO_PANTALLA_X
	elif obj.position.y > TAMANO_PANTALLA_Y:
		obj.position.y = 0
	elif obj.position.y < 0:
		obj.position.y = TAMANO_PANTALLA_Y

func actualizarTextos():
	$textos/puntos.set_text(String(jugador.get_puntos()))
	$textos/vidas.set_text("Vidas: " + String(jugador.vidas))
	
func addInsecto():
	#TODO
	print("TODO: ",etapa, " insectos mas en juego")
