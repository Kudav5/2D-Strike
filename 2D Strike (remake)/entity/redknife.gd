extends KinematicBody2D

var gerak = Vector2.ZERO
var speed = 300

func _physics_process(delta):
	gerak.x = Input.get_axis("kanan","kiri")
	gerak.y = Input.get_axis("atas","bawah")
	move_and_slide(gerak*speed)
	if Input.is_action_pressed("tembak"):
		look_at(get_global_mouse_position())
	if Input.is_action_pressed("tesuara"):		# minigun
		$AudioStreamPlayer.play()

func _on_armoryroom_masukbom():
	$Sprite.visible = false
	$Sprite2.visible = true
func _on_armoryroom_keluarbom():
	$Sprite.visible = true
	$Sprite2.visible = false
