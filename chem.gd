extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if global.cl == true:
		$Cl.position = Vector2(0,0)
	if global.h == true:
		$H.position = Vector2(0,0)
	if global.o == true:
		$O.position = Vector2(0,0)
	if global.f == true:
		$F.position = Vector2(0,0)
	if global.n == true:
		$N.position = Vector2(0,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
