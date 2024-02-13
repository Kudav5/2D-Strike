extends Control

func _ready():
	Bcksnd.play_song()
	OS.center_window()
	pass

func _on_singlegame_released():
	get_tree().change_scene("res://main/singlegame.tscn")
func _on_wifionlinegame_released():
	get_tree().change_scene("res://main/onlinegame.tscn")
func _on_mapeditor_released():
	get_tree().change_scene("res://main/mapedit.tscn")
func _on_settings_released():
	get_tree().change_scene("res://main/settings.tscn")
func _on_profile_released():
	get_tree().change_scene("res://main/Pprofile.tscn")
func _on_exit_released():
	get_tree().quit()
