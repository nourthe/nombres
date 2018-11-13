extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
var inmune = true
var acelerado = Vector2(0,0)

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
		if collision:
			golpear(collision.normal)
			#if collision.collider.has_method("hit"):
				#collision.collider.hit()
	else:
		move_and_collide(acelerado*delta*400)
		acelerado*=0.9
		print(acelerado.length())

func golpear(direccion):
	inmune = true
	acelerado = direccion
	print(direccion.length())
	
func _ready():
	print("Comenzó el programa")