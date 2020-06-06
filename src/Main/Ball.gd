extends RigidBody2D


export var speed = 200


# Called when the node enters the scene tree for the first time.
func _ready():
	bounce = 1
	linear_velocity = Vector2(-speed, speed)
