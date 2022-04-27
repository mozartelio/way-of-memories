extends AnimatedSprite


func _on_Player_animate(motion):
	if motion.y < 0:
		if motion.x > 0:
			play("jump_right")
		elif motion.x < 0:
			play("jump_left")
		else:
			play("idle")
	elif motion.x > 0:
		play("run_right")
	elif motion.x < 0:
		play("run_left")
	else:
		play("idle")
