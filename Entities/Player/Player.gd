extends KinematicBody2D

export var speed := 100
export var jump_force := 200
export var gravity := 750
export var slope_slide_threshold := 50.0
export var snap := false

var velocity := Vector2()

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

func _physics_process(delta: float):
	var x_dir := Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	velocity.x = x_dir * speed
	
	if Input.is_action_just_pressed("jump") and snap:
		velocity.y = -jump_force
		snap = false
	
	velocity.y += gravity * delta
	
	# If snap is used, set snap vector to 0,32 else disable it
	velocity = move_and_slide_with_snap(velocity, Vector2(0,32) if snap else Vector2(), Vector2.UP, slope_slide_threshold) 
	
	if is_on_floor() and (Input.is_action_just_released("move_left") or Input.is_action_just_released("move_right")):
		velocity.y = 0
	

	if is_on_floor() and not snap: # Just Landed
		snap = true
	
	update_animation(velocity)

func update_animation(velocity: Vector2):
	var animation:= 'Idle'
	if abs(velocity.x) > 5.0:
		$Sprite.flip_h = velocity.x > 5.0
		animation = 'Run'
	
	if not is_on_floor():
		animation = "jump" if velocity.y < 0 else "fall"
	
	if $AnimationPlayer.current_animation != animation:
		$AnimationPlayer.play(animation)
