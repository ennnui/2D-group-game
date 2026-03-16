extends CollisionShape2D

func _on_body_entered(body:CharacterBody2D):
	if body.name == "bird_wiz":
		body.queue_free()
