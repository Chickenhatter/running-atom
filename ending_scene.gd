extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if global.connector == 'F':
		$Node2D/RichTextLabel.text = 'Hydrogen fluoride'
	if global.connector == 'O':
		$Node2D/RichTextLabel.text = 'Hydroxide'


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
