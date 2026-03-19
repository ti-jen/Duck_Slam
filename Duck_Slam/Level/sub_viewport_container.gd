extends SubViewportContainer

var p1_score = 0
var p2_score = 0

# Adjust this name if your Label is named something else
@onready var score_label = $SubViewport/Control/GameScoreLabel

func _ready():
	# Make sure the container doesn't block your mouse clicks
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	update_display()

func update_display():
	score_label.text = "P1: %d  |  P2: %d" % [p1_score, p2_score]

# This is the function you call when someone dies
func add_score(player_num: int):
	if player_num == 1:
		p1_score += 1
	else:
		p2_score += 1
	update_display()
