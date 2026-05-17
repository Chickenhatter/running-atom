extends Node2D
var pressed = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer2D2.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if pressed == true:
		$AudioStreamPlayer2D2.stop()
		$AudioStreamPlayer2D.play()
		$"../Node2D/black".self_modulate.a += 0.01
		await get_tree().create_timer(1).timeout
		get_tree().change_scene_to_file('res://node_2d.tscn')


func _on_button_pressed() -> void:
	pressed = true
	
