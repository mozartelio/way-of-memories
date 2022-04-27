extends Node2D



func _on_Player_hearth_signal(number_of_hearth):
	#print(number_of_hearth)
	pass
	
#go out from the current scene
func _unhandled_key_input(event):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
