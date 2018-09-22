extends Area2D

func _on_AmmoArea_entered(body):
	if body.is_in_group("Player"):
		queue_free()
		#add_ammo()
	pass