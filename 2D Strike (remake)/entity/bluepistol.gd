extends KinematicBody2D
const ammo = preload("res://entity/ammo.tscn")
const peluru = preload("res://entity/peluru.tscn")
var gerak = Vector2.ZERO
var speed = 300
var a = 1
signal tembak
signal mati

func _physics_process(delta):
	gerak.x = Input.get_axis("kanan","kiri")
	gerak.y = Input.get_axis("atas","bawah")
	move_and_slide(gerak*speed)
	if Input.is_action_pressed("tembak"):
		look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("gantiw"):
		a += 1
		if a % 2 == 0:
			pass
			$knife.visible = false
			$pistol.visible = true
		else:
			$knife.visible = true
			$pistol.visible = false
			pass
	if Input.is_action_just_pressed("tembakpeluru") and $pistol.visible == true:
		$deagle.play()
		emit_signal("tembak")


func _on_armoryblue_bluwin():
	$GUI/Label.visible = true
	pass # Replace with function body.

func matiii():
	pass
	
