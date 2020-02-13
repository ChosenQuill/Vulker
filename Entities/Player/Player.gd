extends KinematicBody2D

export var speed := 100 * 5
export var jump_force := 275 * 5
export var gravity := 12 * 5
export var slope_slide_threshold := 50.0
export var is_jumping := false

onready var anim_player := $AnimationPlayer

var velocity := Vector2()

func _ready():
	pass

func _process(delta):
	var rotation = get_local_mouse_position().angle()
	# [-Pi, Pi], rotate 2*Pi, [Pi, 3*Pi], adjust with modulus, [0, 2*Pi]
	# var rotation_d = int(round(rad2deg(rotation)) + 360) % 360;
	#print_debug(rotation_d)
	#if !(rotation_d > 60 && rotation_d < 120):
	$Gun.rotation = get_local_mouse_position().angle()
	$Gun/Sprite.flip_v = $Gun.rotation_degrees > 90 || $Gun.rotation_degrees < -90

func _apply_gravity():
	velocity.y += gravity

func _apply_movement():
	# Set is_jumping to false if player is moving and moving downwards
	if is_jumping && velocity.y >= 0:
		is_jumping = false
	
	# If snap is used, set snap vector to 0,32 else disable it
	var snap = Vector2(0,32) if not is_jumping else Vector2.ZERO
	
	velocity = move_and_slide_with_snap(velocity, snap, Vector2.UP, slope_slide_threshold) 

func _handle_move_input():
	var x_dir := Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	velocity.x = x_dir * speed
	
	if x_dir != 0: # TODO Change gun offset to right when flip.
		$Sprite.flip_h = x_dir < 0
