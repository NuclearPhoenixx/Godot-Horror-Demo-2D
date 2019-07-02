extends ProgressBar

onready var player = get_node("../../Player")
var exhausted = false #flag to check player exhaustion

var STAMINA_REGEN = .5 #stamina regeneration rate
var EXH_RATE = 1 #stamina exhaustion rate

func _process(delta):
	if value == min_value: #if stamina is min player is exhausted
		exhausted = true
	
	if exhausted: #if player is exhausted then he cannot run until stamina has fully recovered
		if value == max_value:
			exhausted = false
			player.sprints = player.SPRINT_SPEED
		else:
			player.sprints = player.WALK_SPEED
	
	if Input.is_action_pressed("sprint") and !exhausted:
		value -= 1
	else:
		value += .5
