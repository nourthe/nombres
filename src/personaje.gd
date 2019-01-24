extends KinematicBody2D

export (int) var speed = 200

var TIEMPO_INMUNIDAD = 3.5
var velocity = Vector2()

var acelerado = Vector2(0,0)

var inmune
var vidas = 3
var puntos = 0

func _ready():
	inmune = $inmune
	inmune.set_one_shot(true)
	inmune.set_wait_time(TIEMPO_INMUNIDAD)
	inmune.start()
	$TextureRect.get_material().set_shader_param("inmune", true)

func get_input():
    velocity = Vector2()
    if Input.is_action_pressed('pj_right'):
        velocity.x += 1
    if Input.is_action_pressed('pj_left'):
        velocity.x -= 1
    if Input.is_action_pressed('pj_down'):
        velocity.y += 1
    if Input.is_action_pressed('pj_up'):
        velocity.y -= 1
    velocity = velocity.normalized() * speed

func _physics_process(delta):
	if acelerado.length()<0.2:
		get_input()
		var collision = move_and_collide(velocity * delta)
	else:
		move_and_collide(acelerado*delta*400)
		acelerado*=0.9
	
	if inmune.is_stopped():
		$TextureRect.get_material().set_shader_param("inmune", false)


func hit(direccion):
	acelerado = -direccion
	if(inmune.is_stopped()):
		inmune.start()
		$TextureRect.get_material().set_shader_param("inmune", true)
		vidas -= 1

func get_puntos():
	return floor(puntos)
	
