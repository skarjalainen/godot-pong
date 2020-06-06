class_name Player
extends KinematicBody2D

export var id = "p1"
export var speed = 200


func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	# Get player input
	var direction: Vector2
	direction.y = Input.get_action_strength(id + "_down") - Input.get_action_strength(id + "_up")
	
	# If input is digital, normalize it for diagonal movement
	if abs(direction.x) == 1 and abs(direction.y) == 1:
		direction = direction.normalized()
	
	# Apply movement
	var movement = speed * direction * delta
	move_and_collide(movement)
