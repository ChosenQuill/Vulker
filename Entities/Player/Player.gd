extends KinematicBody2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

func _physics_process(delta):
	move_and_collide(Vector2(0, 1))
