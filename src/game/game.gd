extends Node

var debug_mode = false

func _init():
	pause_mode = Node.PAUSE_MODE_PROCESS

func _unhandled_key_input(event):
	if event.is_action_pressed("ui_cancel"): #quit game
		get_tree().quit()
	
	if event.is_action_pressed("reset"): #reset scene
		get_tree().reload_current_scene()
	
	if event.is_action_pressed("debug"): #enable debugging mode
		if debug_mode:
			debug_mode = false
		else:
			debug_mode = true
