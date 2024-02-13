extends Control
signal masukbom
signal keluarbom
const bomnode = preload("res://entity/bombplaced.tscn")
var angka = 1
var bomtaro = false

func _ready():
	Bcksnd.stop_song()

func _on_placea_body_entered(body):
	emit_signal("masukbom")
	$bomode/placea/c4.play()
	$Timer.start()
func _on_placea_body_exited(body):
	emit_signal("keluarbom")

func _on_placeb_body_entered(body):
	emit_signal("masukbom")
	$bomode/placeb/c4.play()
func _on_placeb_body_exited(body):
	emit_signal("keluarbom")

func _on_Timer_timeout():
	emit_signal("keluarbom")
	var boom = bomnode.instance()
	if angka == 1:
		bomtaro = true
		angka -= 1
		get_tree().current_scene.add_child(boom)
		boom.position = $redknife.position
	pass
