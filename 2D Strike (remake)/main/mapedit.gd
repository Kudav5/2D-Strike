extends Control
var w = 30
var h = 20

func _ready():
	$open.play()

func _on_back_released():
	get_tree().change_scene("res://main/menu.tscn")
func _on_new_pressed():
	get_tree().change_scene("res://main/mapedit.tscn")
func _on_my_pressed():
	get_tree().change_scene("res://main/mymaps.tscn")

func _on_plusw_pressed():
	w += 1
	$VBoxContainer/width/numw/Label.text = str(w)
func _on_minusw_pressed():
	w -= 1
	$VBoxContainer/width/numw/Label.text = str(w)

func _on_plush_pressed():
	h += 1
	$VBoxContainer/height/numh/Label.text = str(h)
func _on_minush_pressed():
	h -= 1
	$VBoxContainer/height/numh/Label.text = str(h)
