extends Label

@onready var player_1_points = $"../../player_1_display/player_1_points"

var points = 0

func display_points(points):
	player_1_points.text = "Player 1 score: " + str(points)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	display_points(points)
