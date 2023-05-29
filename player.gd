extends CharacterBody2D


@export var move_speed = 250

var facing_right = true


func _physics_process(_delta):
	var dir = Input.get_vector("move_left", "move_right", "move_up", "move_down").normalized()
	velocity = dir * move_speed
	move_and_slide()
	
	if facing_right and dir.x < 0:
		flip()
	elif not facing_right and dir.x > 0:
		flip()


func flip():
	$Graphics.scale.x *= -1
	facing_right = not facing_right
