extends Sprite


var rotationSpeed = -0.01


func _physics_process(delta):
	$".".rotate(rotationSpeed)
	$Area2D/CollisionPolygon2D.rotate(rotationSpeed)
