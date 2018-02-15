extends RigidBody2D

export var SPEED = 300
var velocity = Vector2()

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("game_up"):
		print("up pressed")
		velocity.y -= SPEED
	if event.is_action_pressed("game_down"):
		velocity.y += SPEED
	if event.is_action_pressed("game_left"):
		velocity.x -= SPEED
	if event.is_action_pressed("game_right"):
		velocity.x += SPEED
	if event.is_action_released("game_up"):
		velocity.y += SPEED
	if event.is_action_released("game_down"):
		velocity.y -= SPEED
	if event.is_action_released("game_left"):
		velocity.x += SPEED
	if event.is_action_released("game_right"):
		velocity.x -= SPEED
		
	linear_velocity = velocity.normalized() * SPEED