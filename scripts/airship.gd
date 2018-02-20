extends KinematicBody2D

export var SPEED = 300
export var SIDE_SPEED = 100
	
func _physics_process(delta):
	
	var velocity = Vector2()
	if Input.is_action_pressed("game_up"):
		velocity.x += 1
	if Input.is_action_pressed("game_down"):
		velocity.x -= 1
	if Input.is_action_pressed("game_left"):
		velocity.y -= 1
	if Input.is_action_pressed("game_right"):
		velocity.y += 1
		
	if get_viewport().get_mouse_position().distance_to(position) > 50:
		rotation = get_viewport().get_mouse_position().angle_to_point(position)
		
	velocity = velocity.normalized().rotated(rotation)
	

		
	move_and_collide(velocity * SPEED * delta)