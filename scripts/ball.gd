extends CharacterBody2D

@onready var left_check = $boundary_checks/left_check
@onready var right_check = $boundary_checks/right_check
@onready var down_check = $boundary_checks/down_check
@onready var up_check = $boundary_checks/up_check

@onready var player_1_points = %player_1_points
@onready var player_2_points = %player_2_points

var coin_flip_x = randi_range(0, 1) 
var coin_flip_y = randi_range(0, 1)
	
func _process(delta):
	collision()
	move_and_slide()
	p1_score()
	p2_score()
	coin_flip_x = randi_range(0, 1) 
	coin_flip_y = randi_range(0, 1)
	
func _ready():
	start()
	
func start():
	if coin_flip_x == 1:
		velocity.x = -300
	else:
		velocity.x = 300
		
	if coin_flip_y == 1:
		velocity.y = -300
	else:
		velocity.y = 300

func collision():
	if left_check.is_colliding() == true:
		velocity.x = 300
	
	if right_check.is_colliding() == true:
		velocity.x = -300
		
	if down_check.is_colliding() == true:
		velocity.y = -300

	if up_check.is_colliding() == true:
		velocity.y = 300

func p2_score():
	if position.x < 0:
		player_2_points.points = player_2_points.points + 1
		position.x = 571
		position.y = 331
		start()

func p1_score():
	if position.x > 1150:
		player_1_points.points = player_1_points.points + 1
		position.x = 571
		position.y = 331
		start()
