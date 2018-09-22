extends KinematicBody2D

export (int) var health
export (int) var speed
export (float) var rotation_speed

var velocity = Vector2()
var alive = true

func _ready():
	pass

func control(delta):
	var rot_dir = 0
	if Input.is_action_pressed("ui_right"):
		rot_dir += 1
	if Input.is_action_pressed("ui_left"):
		rot_dir -= 1
	rotation += rotation_speed * rot_dir * delta
	velocity = Vector2()
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	if not alive:
		return
	control(delta)
	move_and_slide(velocity)