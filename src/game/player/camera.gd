extends Camera2D

var MAX_ZIN = Vector2(0.3, 0.3)
var MAX_ZOUT = Vector2(1.2, 1.2)
var ZOOM_RES = .05

func _unhandled_input(event):
	if event.is_action_pressed("camera_zin"): # check scroll wheel, camera zoom in and out
		get_tree().set_input_as_handled()
		if zoom > MAX_ZIN:
			zoom += Vector2(-1,-1) * ZOOM_RES
	
	if event.is_action_pressed("camera_zout"):
		get_tree().set_input_as_handled()
		if zoom < MAX_ZOUT:
			zoom += Vector2(1,1) * ZOOM_RES
