extends KinematicBody2D

export(int) var JUMP_FORCE = -650
export(int) var GRAVITY = 13
export(int) var SPEED = 500
export(int) var FRICTION = 13
export(int) var ACCELERATION = 17

var velocity = Vector2()
var jumpCount = 0
var jumpLimit = 2

onready var _animated_sprite = $AnimatedSprite

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(_delta):
	
	if get_tree().get_current_scene().get_name() == "Lab_final":	
		if Input.is_action_pressed("move_right"):
			_animated_sprite.play("Evil_walk")
			$AnimatedSprite.flip_h = true
		elif Input.is_action_pressed("move_left"):
			_animated_sprite.play("Evil_walk")
			$AnimatedSprite.flip_h = false
		else:
			_animated_sprite.play("Evil_idle")
	else:
			if Input.is_action_pressed("move_right"):
				_animated_sprite.play("Walk")
				$AnimatedSprite.flip_h = true
			elif Input.is_action_pressed("move_left"):
				_animated_sprite.play("Walk")
				$AnimatedSprite.flip_h = false
			else:
				_animated_sprite.play("Idle")
#physics process controls the movement, delta is set by the system as 60
func _physics_process(_delta):
	apply_gravity()
#    this sets up the movement L and R
	var input = Vector2.ZERO
	input.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input = input.normalized()
	if input.x == 0:
		apply_friction()
	else:
		apply_acceleration(input.x)
#    this sets up the jumping
	if is_on_floor():
		jumpCount = 0
	if Input.is_action_just_pressed("jump") and jumpCount < jumpLimit:
		velocity.y = JUMP_FORCE
		jumpCount += 1
	else:
		if Input.is_action_just_released("jump"):
			velocity.y = 300
	velocity =  move_and_slide(velocity, Vector2.UP)

func apply_gravity():
	velocity.y += GRAVITY

func apply_friction():
	velocity.x = move_toward(velocity.x, 0, FRICTION)

func apply_acceleration(input):
	velocity.x = move_toward(velocity.x, SPEED * input, ACCELERATION)

func _on_Carrot_collect_body_entered(_body: Node) -> void:
	pass


func _on_Collectable2_item_collected() -> void:
	pass # Replace with function body.
