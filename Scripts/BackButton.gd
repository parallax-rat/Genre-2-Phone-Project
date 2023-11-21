extends Control
signal clicked

func _gui_input(event):
	if Input.is_action_pressed("Click"):
		clicked.emit()
