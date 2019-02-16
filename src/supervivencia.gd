extends "motor.gd"

# Duracion de cada etapa en segundos
var DURACION_ETAPA = 4

var etapa

func _ready():
	jugador.puntos = 0
	etapa = 1

func _process(delta):
	actualizarTextos()
	jugador.puntos += delta
	if jugador.puntos >= etapa*DURACION_ETAPA :
		addRandObject("insecto")
		etapa += 1
		randomize()
		var rand = rand_range(0,3)
		if(rand<1):
			addRandObject("insecticida")
	if jugador.vidas < 1 :
		gameOver()

func actualizarTextos():
	$textos/puntos.set_text("Puntaje: " + String(jugador.get_puntos()))
	$textos/vidas.set_text("Vidas: " + String(jugador.vidas))
	$textos/disparos.set_text("Disparos: " + String(jugador.disparos))
