extends Button



func _on_pressed():
	get_tree().quit()


func _on_mouse_entered():
	modulate.a = 0.5


func _on_mouse_exited():
	modulate.a = 1
