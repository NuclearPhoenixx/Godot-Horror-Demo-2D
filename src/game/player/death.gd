extends Area2D

func _on_DeathZone_body_entered(body): #collision with any enemy will kill you
	if "enemy" in body.name.to_lower():
		print("You died!")
		get_tree().reload_current_scene()
