extends Control


func _ready():
	open()


func close():
	get_tree().paused = false
	visible = false


func open():
	get_tree().paused = true
	visible = true


func _on_StartButton_pressed():
	close()


func _on_QuitButton_pressed():
	get_tree().quit()
