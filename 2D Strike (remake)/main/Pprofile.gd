extends Control
var rndm = RandomNumberGenerator.new()

func _ready():
	$open.play()
	$karakter/world.play("default")

# untuk ID akun
#func _ready():
#	rndm.randomize()
#	print(rndm.randi())

func _on_gantinama_pressed():
	$popup/gnama.visible = true
func _on_gnama_confirmed():
	var nn = $popup/gnama/LineEdit.text
	$nilai/nama/Label.text = 'Nickname: ' + nn
	
func _on_akunmk_pressed():
	$popup/npw/LineEdit.text = ''
	$popup/signin/LineEdit.text = ''
	if $isi/akunmk/Label.text == 'Sign in':
		$popup/signin.visible = true
		$popup/npw.visible=true
	if $isi/akunmk/Label.text == 'Sign out':
		$nilai/id/Label.text = 'ID: N/A'
		$nilai/akun/Label.text = 'Account:'
		$isi/akunmk/Label.text = 'Sign in'
		$isi/register/Label.text = 'Register'
func _on_npw_confirmed():
	var sg = $popup/signin/LineEdit.text
	$nilai/akun/Label.text = 'Account: ' + sg
	$nilai/id/Label.text = 'ID: 70026'
	$isi/akunmk/Label.text = 'Sign out'
	$isi/register/Label.text = 'Change password'

func _on_hapusakun_pressed():
	$nilai/id/Label.text = 'ID: N/A'
	$nilai/akun/Label.text = 'Account:'
	$isi/akunmk/Label.text = 'Sign in'
	$isi/register/Label.text = 'Register'
	
func _on_back_released():
	get_tree().change_scene("res://main/menu.tscn")
func _on_friends_pressed():
	get_tree().change_scene("res://main/Pfriends.tscn")
func _on_groups_pressed():
	get_tree().change_scene("res://main/Pgroups.tscn")
func _on_leaders_pressed():
	get_tree().change_scene("res://main/Pleaders.tscn")
func _on_news_pressed():
	get_tree().change_scene("res://main/Pnews.tscn")

func _on_Button_pressed():
	$popup/sc.visible = true
	pass

func _on_register_pressed():
	$popup/npw/LineEdit.text = ''
	if $isi/register/Label.text == 'Change password':
		$popup/npw.visible=true
#	if $isi/register/Label.text == 'Register':
#		pass
#		$popup/signin.window_title = 'a'
