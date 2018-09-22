extends KinematicBody2D

export (PackedScene) var Health
export (PackedScene) var Ammo

# test method
func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		destroyEnemy()

func destroyEnemy():
	dropsItem()
	queue_free()
	pass

func dropsItem():
	var percent = randf()
	if percent <= 0.3:
		var item = Health.instance()
		get_tree().get_current_scene().add_child(item)
	if percent > 0.3 and percent <= 0.6:
		var item = Ammo.instance()
		get_tree().get_current_scene().add_child(item)
	pass