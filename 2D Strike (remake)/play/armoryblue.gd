extends Control
const ammo = preload("res://entity/ammo.tscn")
const peluru = preload("res://entity/peluru.tscn")
signal bluwin

func _ready():
	Bcksnd.stop_song()
#	if $c4.play() == 5.0:
#		$bluepistol/Label.visible = true
	
func _on_Area2D_body_entered(body):
	$matikanbom.play()
	$Timer.start()
	pass

func _on_bluepistol_tembak():
	if Input.is_action_just_pressed("tembakpeluru"):
		var amo = ammo.instance()
		get_tree().current_scene.add_child(amo)
		amo.position = $bluepistol.position
		
		var pluru = peluru.instance()
		get_tree().current_scene.add_child(pluru)
		pluru.global_position = $bluepistol.global_position

func _on_Timer_timeout():
	$c4.stop()
	emit_signal("bluwin")
