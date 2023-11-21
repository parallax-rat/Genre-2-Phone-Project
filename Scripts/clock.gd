extends Label

var seconds = 11

func _ready():
	text = "11:" + str(seconds)

func _on_timer_timeout():
	seconds += 1
	text = "11:" + str(seconds)
