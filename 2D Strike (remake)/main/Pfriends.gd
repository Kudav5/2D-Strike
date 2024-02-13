extends Control

func _ready():
	$open.play()

func _on_profile_pressed():
	get_tree().change_scene("res://main/Pprofile.tscn")
func _on_leaders_pressed():
	get_tree().change_scene("res://main/Pleaders.tscn")
func _on_news_pressed():
	get_tree().change_scene("res://main/Pnews.tscn")
func _on_back_released():
	get_tree().change_scene("res://main/menu.tscn")
func _on_groups_pressed():
	get_tree().change_scene("res://main/Pgroups.tscn")
func _on_myfriend_pressed():
	get_tree().change_scene("res://main/Pfriends.tscn")
func _on_frendreq_pressed():
	get_tree().change_scene("res://main/Pfriendsreq.tscn")
func _on_findfrend_pressed():
	get_tree().change_scene("res://main/Pfriendsfind.tscn")


func _on_find_pressed():
	# id: hpg
	if $TextureRect2/obrol/id/LineEdit.text == '120098' or $TextureRect2/obrol/nn/LineEdit.text == 'HongProGaming':
		$TextureRect2/obrol/linedit/hpg.visible = true
		$TextureRect2/obrol/linedit/pi.visible = false
		$TextureRect2/obrol/nothing.visible = false
		$TextureRect2/obrol/linedit.visible = true
	# id: pi
	elif $TextureRect2/obrol/id/LineEdit.text == '70026' or $TextureRect2/obrol/nn/LineEdit.text == 'ProIndo':
		$TextureRect2/obrol/linedit/pi.visible = true
		$TextureRect2/obrol/linedit/hpg.visible = false
		$TextureRect2/obrol/nothing.visible = false
		$TextureRect2/obrol/linedit.visible = true


