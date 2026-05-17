extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$Node2D.global_position.x = $"../Character/Node2D/main_hydrogen".global_position.x
	if global.connector == 'H':
		$"../map/CharacterBody2D".position.x = 10000


func _on_flame_body_entered(body: Node2D) -> void:
	if body.name == 'main_hydrogen':
		$"../Character/Node2D/main_hydrogen/black".self_modulate.a = 0.5
		global.black = true
		await get_tree().create_timer(1.0).timeout
		$flame/AudioStreamPlayer2D.play()
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file('res://ending_scene.tscn')


func _on_left_area_entered(_area: Area2D) -> void:
	global.ace = 'left'


func _on_right_area_entered(_area: Area2D) -> void:
	global.ace = 'right'


func _on_left_area_exited(area: Area2D) -> void:
	if area is Area2D:
		global.ace = 'centre'


func _on_right_area_exited(area: Area2D) -> void:
	if area is Area2D:
		global.ace = 'centre'
