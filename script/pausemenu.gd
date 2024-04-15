extends Control

func _ready():
	$AnimationPlayer.play("RESET")

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	
func testEsc():
	if Input.is_action_just_pressed("pausemenu") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("pausemenu") and !get_tree().paused:
		resume()
		


func _on_continuar_pressed():
	resume()


func _on_retornar_pressed():
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	get_tree().paused = false

func _process(delta):
	testEsc()



