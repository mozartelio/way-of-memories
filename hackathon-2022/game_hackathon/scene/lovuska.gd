extends KinematicBody2D


var rotationSpeed = -0.01

func _physics_process(delta):
	$Sprite39.rotate(rotationSpeed)
	$CollisionPolygon2D.rotate(rotationSpeed)
