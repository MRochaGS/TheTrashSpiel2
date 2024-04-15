extends Button

func _on_pressed():
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_mouse_entered():
	modulate.a = 0.5


func _on_mouse_exited():
	modulate.a = 1
