extends KinematicBody2D
var gerak = Vector2.ZERO
var speed = 10
var tbk = false

func _physics_process(delta):
	gerak.x += 10
#	gerak.y +=1
	move_and_slide(gerak*speed)

func _on_bluepistol_tembak():
	tbk = true
	pass
