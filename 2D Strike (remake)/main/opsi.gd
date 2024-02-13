extends Control
var duit = 100

func _ready():
	$open.play()

func _on_back_released():
	get_tree().change_scene("res://main/singlegame.tscn")


func _on_lebih_pressed():
	duit += 100
	if duit >= 10000:
		duit = 10000
	$moneyy/money/Label.text = str(duit)

func _on_kurang_pressed():
	duit -= 100
	if duit <= 0:
		duit = 0
	$moneyy/money/Label.text = str(duit)
