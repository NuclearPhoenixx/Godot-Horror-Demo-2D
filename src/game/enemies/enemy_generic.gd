extends KinematicBody2D

onready var nav = get_node("../Navigation")
onready var player = get_node("../Player")
onready var pathfinding = get_node("DebugPathfinding")

var SPEED = 80

func _physics_process(delta): #real short movement code. seems to work, nice :)
	var path = nav.get_simple_path(position, player.position)
	
	var distance = path[1] - position
	
	if distance.length() <= 0:
		path.remove(1)
		return
	
	var direction = distance.normalized()
	move_and_slide(direction * SPEED)
	
	# DEBUG STUFF
	if game.debug_mode: #if in debug mode then show the pathfinding vectors
		var debug_path = PoolVector2Array()
		for i in path:
			debug_path.append(to_local(i))
		pathfinding.points = debug_path
