extends Node2D

var screens = {"Home": 1, "Messages": 2}
var currentScreen
var previousScreen

var music_resume

func _ready():
	$AnimationPlayer.play("new_game_fade_in")

func _change_screen(screen):
	match screen:
		1:
			$Screen/Messages.visible = false; $Screen/Settings.visible = false; $Screen/Home.visible = true
		2:
			$Screen/Messages.visible = true; $Screen/Home/GridContainer/TextureRectMessage/MessageCount.visible = false; $Screen/Home.visible = false


func _on_music_toggle_toggled(button_pressed):
	if $AudioStreamPlayer.playing:
		$AudioStreamPlayer.stop()
	else: $AudioStreamPlayer.play()


func _on_control_clicked():
	$Screen/Settings.visible = false


func _on_settings_click():
	$Screen/Settings.visible = true
