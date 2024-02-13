extends Control
var t = 30

func _ready():
	$open.play()

func _on_plus_pressed():
	t += 10
	$VBoxContainer/Control/timer/Label.text = '5:'+ str(t)
func _on_minus_pressed():
	t -= 10
	$VBoxContainer/Control/timer/Label.text = '5:'+ str(t)


func _on_back_released():
	get_tree().change_scene("res://main/menu.tscn")
	pass # Replace with function body.
