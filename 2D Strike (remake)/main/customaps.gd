extends Control

func _ready():
	$open.play()

func _on_back_released():
	get_tree().change_scene("res://main/singlegame.tscn")
