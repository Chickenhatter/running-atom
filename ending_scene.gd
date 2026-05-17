extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if global.connector == 'F':
		$Node2D/RichTextLabel.text = 'Hydrogen fluoride is a highly corrosive gas but this is the incorrect experiment, please go again'
	if global.connector == 'O':
		$Node2D/RichTextLabel.text = 'Hydroxide is the the building block of all bases which are negetively charged but this is the incorrect experiment, please go again'
	if global.connector == 'Cl':
		$Node2D/RichTextLabel.text = 'Hydrocloric Acid is one of the most commonly used inorganic acids used in a lab but this is the incorrect experiment, please go again'
	if global.connector == 'H':
		$Node2D/RichTextLabel.text = 'Hydrogen gas is used in an experiment with fire to cause a squeaky pop, congradulations on completing the correct experiment'


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Node2D/Sprite2D.self_modulate.a -= 0.01
