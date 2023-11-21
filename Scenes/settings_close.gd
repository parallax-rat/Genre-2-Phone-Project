extends Control

signal clicked

var hover = false

func _gui_input(event):
	if Input.is_action_pressed("Click"):
		clicked.emit()
