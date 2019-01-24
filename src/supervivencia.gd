extends "motor.gd"

# Duracion de cada etapa en segundos
var DURACION_ETAPA = 4

var etapa

func _ready():
	jugador = $jugador
	jugador.puntos = 0
	etapa = 1

func _process(delta):
	actualizarTextos()
	jugador.puntos += delta
	if jugador.puntos >= etapa*DURACION_ETAPA :
		addRandInsecto()
		etapa += 1

func actualizarTextos():
	$textos/puntos.set_text(String(jugador.get_puntos()))
	$textos/vidas.set_text("Vidas: " + String(jugador.vidas))
	

