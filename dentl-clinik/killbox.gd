extends Area2D
	
func _on_body_entered(body):
	if body.name == "bird_wiz":
		body.kill()
	else:
		body.queue_free()
#hell\lo
