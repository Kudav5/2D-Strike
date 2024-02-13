extends Control
onready var selek = $pilihan/iselek/MenuButton.get_popup()
onready var tipe = $pilihan/itipe/MenuButton.get_popup()
onready var numred = $pilihan/numr/MenuButton.get_popup()
onready var numblue = $pilihan/numb/MenuButton.get_popup()
#signal boom

func _ready():
	selek.connect("id_pressed", self, 'iselek')
	tipe.connect("id_pressed", self, 'itipe')
	numred.connect("id_pressed", self, 'numr')
	numblue.connect("id_pressed", self, 'numb')
	$open.play()
	pass

func iselek(id):
	$pilihan/iselek/MenuButton.text = selek.get_item_text(id)
func itipe(id):
	$pilihan/itipe/MenuButton.text = tipe.get_item_text(id)
func numr(id):
	$pilihan/numr/MenuButton.text = numred.get_item_text(id)
func numb(id):
	$pilihan/numb/MenuButton.text = numblue.get_item_text(id)
func _on_back_released():
	get_tree().change_scene("res://main/menu.tscn")
func _on_custom_released():
	get_tree().change_scene("res://main/customaps.tscn")
func _on_opsi_released():
	get_tree().change_scene("res://main/opsi.tscn")

func _on_play_released():
	if $pilihan/iselek/MenuButton.text == 'Armory room':		# harus mode bomb
		if $pilihan/itipe/MenuButton.text == 'Bomb':
			get_tree().change_scene("res://play/armoryroom.tscn")
		elif $pilihan/itipe/MenuButton.text == 'Team game':
			get_tree().change_scene("res://play/armoryblue.tscn")
		elif $pilihan/itipe/MenuButton.text == 'Zombie - infection':
			get_tree().change_scene("res://play/aroomz.tscn")
	if $pilihan/iselek/MenuButton.text == 'House':
		get_tree().change_scene("res://play/house.tscn")
	pass # Replace with function body.
