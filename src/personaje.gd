extends KinematicBody2D

export (int) var speed = 350

var velocity = Vector2()
var inmune = true
var acelerado = Vector2(0,0)

var vidas = 3

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

func hit(direccion):
	inmune = true
	acelerado = -direccion
	vidas -= 1
	print("Vidas: ",vidas)

func _ready():
	print("Comenzó el programa")