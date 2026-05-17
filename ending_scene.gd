extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if global.connector == 'F':
		$Node2D/RichTextLabel.text = 'Hydrogen fluoride'
	if global.connector == 'O':
		$Node2D/RichTextLabel.text = 'Hydroxide'
	if global.connector == 'Cl':
		$Node2D/RichTextLabel.text = 'Hydrocloric Acid'
	if global.connector == 'H':
		$Node2D/RichTextLabel.text = 'Hydrogen gas is used in an experiment with fire to cause a squeaky pop, congradulations on completing the correct experiment'


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
