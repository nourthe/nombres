extends KinematicBody2D

var LIMITE_ROTACION = 0.1
var VELOCIDAD = 250
var rotacion = 0
var variacion = 0

func _process(delta):
	randomize()
	variacion = rand_range(-1,1)*delta
	if(abs(rotacion + variacion) <= LIMITE_ROTACION):
		rotacion += variacion
	rotate(rotacion)
	var collision = move_and_collide(Vector2(0,-1).rotated(rotation)*VELOCIDAD*delta)
	if collision:
		if collision.collider.has_method("hit"):
			collision.collider.hit(collision.normal)
