extends Area2D
signal clicked

var hover = false

func _unhandled_input(event):
	if Input.is_action_pressed("Click") && hover:
		clicked.emit()

func _on_mouse_entered():
	hover = true
	print("Hover")

func _on_mouse_exited():
	hover = false
	print("no hover")
