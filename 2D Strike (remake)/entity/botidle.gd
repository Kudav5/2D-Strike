extends Area2D

func _on_botidle_body_entered(body):
	if body.is_in_group('peluru'):
		$Sprite.visible = false
		$rip.visible = true
