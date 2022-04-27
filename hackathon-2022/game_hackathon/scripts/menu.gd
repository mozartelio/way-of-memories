extends Control


var max_move := 55
var screen_center := Vector2.ZERO

func _ready():
	var i := 0
	for button in $Buttons.get_children():
		if i == 2:
			break
		button.connect("pressed", self, "open_scene", [button.open_scene])
		i = i + 1
	
	var rect = get_viewport_rect()
	screen_center = rect_position + (rect.size / 2)


func _process(delta):
	var dist_mouse = ((get_global_mouse_position() - screen_center)).clamped(max_move)
	rect_global_position = lerp(rect_global_position, dist_mouse, delta*2)

func open_scene(path):
	get_tree().change_scene(path)
	
func _unhandled_key_input(event):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
