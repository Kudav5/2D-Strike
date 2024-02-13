extends Control

func _ready():
	$open.play()

func _on_profile_pressed():
	get_tree().change_scene("res://main/Pprofile.tscn")
func _on_news_pressed():
	get_tree().change_scene("res://main/Pnews.tscn")
func _on_groups_pressed():
	get_tree().change_scene("res://main/Pgroups.tscn")
func _on_friends_pressed():
	get_tree().change_scene("res://main/Pfriends.tscn")
func _on_back_released():
	get_tree().change_scene("res://main/menu.tscn")

func _on_today_pressed():
	get_tree().change_scene("res://main/Pleaders.tscn")
func _on_week_pressed():
	get_tree().change_scene("res://main/Pleadersweek.tscn")

