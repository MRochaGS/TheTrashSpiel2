extends AudioStreamPlayer

const fase_music = preload("res://sprites/musics/jogo_normal.ogg")

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	play()
	
func _stop_music(music: AudioStream, volume = -100.0):
	if stream == music:
		return
		
	stream = music
	volume_db = volume
	stop()
	
func play_fase_music():
	_play_music(fase_music)
	
func stop_music_level():
	_stop_music(fase_music)
