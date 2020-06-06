extends Node


onready var _main_menu = $MainMenuCanvas/MainMenu


# Called when the node enters the scene tree for the first time.
func _ready():
	OS.min_window_size = OS.window_size
	OS.max_window_size = OS.get_screen_size()
