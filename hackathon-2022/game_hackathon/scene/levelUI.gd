extends Node2D


var charakter_hearth = 0
var is_menu_visible = false

signal pause

func _ready():
	hide_menu()
	
func update_hearts():
	$UI/heartsUI/numOfHearts.text = String(charakter_hearth)


func _unhandled_key_input(event):
	if Input.is_action_pressed("ui_cancel"):
		if is_menu_visible == false:
			is_menu_visible = true
			show_menu()
			emit_signal("pause", true)
		else:
			is_menu_visible = false
			hide_menu()
			emit_signal("pause", false)


func _on_Player_hearth_signal(number_of_hearth):
	charakter_hearth = number_of_hearth
	update_hearts()


func show_menu():
	var children = $UI/menu/Container.get_children()
	
	for child in children:
		child.show()


func hide_menu():
	var children = $UI/menu/Container.get_children()
	
	for child in children:
		child.hide()

