extends Control
var speed = 290
const ammo = preload("res://entity/ammo.tscn")
const peluru = preload("res://entity/peluru.tscn")
var riip = false
var ngejar = true

func _ready():
	Bcksnd.stop_song()

func _process(delta):
	
	pass
	if ngejar == true:
		var gerak = $zombi.position.direction_to($bluepistol.position)
		$zombi.move_and_slide(gerak*speed)
		$zombi.look_at($bluepistol.position)

func _on_bluepistol_tembak():
	if Input.is_action_just_pressed("tembakpeluru"):
		riip = true
		var amo = ammo.instance()
		get_tree().current_scene.add_child(amo)
		amo.position = $bluepistol.position
		var pluru = peluru.instance()
		get_tree().current_scene.add_child(pluru)
		pluru.global_position = $bluepistol.global_position
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.is_in_group('peluru'):
		pass
		print(1)
		ngejar = false
		$zombi.queue_free()		
	pass # Replace with function body.
