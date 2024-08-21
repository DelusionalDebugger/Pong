extends CharacterBody2D

var SPEED = 600

func _physics_process(delta):
	var direction = Input.get_axis("1_up", "1_down")
	if direction != 0:
		velocity.y = direction * SPEED
	else:
		velocity.y = 0
	move_and_slide()
