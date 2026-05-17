extends Node2D
var blare = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if blare == true:
		blare= false
		await get_tree().create_timer(1.0).timeout
		$AnimatedSprite2D.play("new_animation")
		$AnimatedSprite2D2.play("new_animation")
		await get_tree().create_timer(1.0).timeout
		$AnimatedSprite2D.play("default")
		$AnimatedSprite2D2.play("default")
		blare = true
