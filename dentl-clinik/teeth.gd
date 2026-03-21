extends Node2D

@export var mouth_closed = false
var proximity_player = false
var player_alive = true
var minimum = 7
var maximum = 15

#teeth animation start, random wait time range(?)
func _ready():
	$AnimationPlayer/Timer.wait_time = randf_range(minimum,maximum)
	$AnimationPlayer/Timer.start()

#body enter
func _on_area_2d_body_entered(Node2D) -> void:
	proximity_player = true


func _process(delta: float) -> void:
	if proximity_player and mouth_closed and player_alive:
		#edit below for kill func l8r
		print("player_is_dead") 
		player_alive = false
	print(mouth_closed)

func _on_timer_timeout() -> void:
	$AnimationPlayer.play("open_close")

#body exit
func _on_area_2d_body_exited(body: Node2D) -> void:
	proximity_player = false
	
