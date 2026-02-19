extends Node2D

func _ready() -> void:
	pass

func hop() -> void:
	var random_angle := randf_range(0.0, 2.0 * PI)
	var random_direction := Vector2(1.0, 0.0).rotated(random_angle)
	var random_distance := randf_range(30.0, 60.0)
	var land_position := random_direction * random_distance
	
	const HOP_TIME  := 0.4
	const HALF_HOP_TIME := HOP_TIME / 2.0
	
	var tween := create_tween()
