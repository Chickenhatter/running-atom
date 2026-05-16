extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$Node2D.global_position.x = $"../Character/Node2D/main_hydrogen".global_position.x
	


func _on_flame_body_entered(body: Node2D) -> void:
	if body.name == 'main_hydrogen':
		global.black = true


func _on_left_area_entered(area: Area2D) -> void:
	pass # Replace with function body.


func _on_right_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
