extends Control

func _ready():
	pass

			
func mouse_interaction(button: Button, state: String) -> void:
	match  state:
		"exited":
			button.modulate.a = 1
			
		"entered":
			button.modulate.a = 0.5



