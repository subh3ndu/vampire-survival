extends CharacterBody2D

const MAX_SPEED = 200
const GRAVITY = 0


func _ready():
	pass


func _process(delta):
	var movement_vector = get_movement_vector()
	var direction = movement_vector.normalized()
	velocity = MAX_SPEED * direction
	
	move_and_slide()


# Returns the movement_vector from the input.
func get_movement_vector():
	#var movement_vector = Vector2.ZERO
	
	var x_movement = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var y_movement = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	return Vector2(x_movement, y_movement)
