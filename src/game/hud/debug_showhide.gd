extends Node2D

func _process(delta):
	if game.debug_mode: #please dont judge me. i dont want to create a script only to show/hide a single node
		if self.name == "FOV":
			hide()
		else:
			show()
	else:
		if self.name == "FOV":
			show()
		else:
			hide()
