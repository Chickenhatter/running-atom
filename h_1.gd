extends CharacterBody2D
var first = 0
var second = 0
var zim = false
var vim = false
func _ready() -> void:
	velocity = Vector2(10, 10).normalized() * 200

func _physics_process(delta: float) -> void:
	if vim == false:
		var collide = move_and_collide(velocity * delta)
		if collide:
			velocity = velocity.bounce(collide.get_normal())
	else:
		if global.ace == 'left':
			$".".position.x += 10
		if global.ace == 'right':
			$".".position.x -= 10
		var _collide = move_and_collide(velocity * delta)
		velocity += get_gravity() * delta * (-1)
	if zim == true:
		$"../../../Character/Node2D/main_hydrogen".global_position = $connect_h_1/Node2D.global_position
		$"../../../Character/Node2D/main_hydrogen".look_at($connect_h_1.global_position)
	$connect_h_1.rotation_degrees += 5
func _on_connect_h_1_area_entered(area: Area2D) -> void:
	if area.name == 'hydrogen_main':
		if first == 0:
			if global.connector != 'H':
				global.h = true
				global.finner = 'n'
				global.connector = 'H'
				$"../../../Character/Node2D/main_hydrogen".position = Vector2(0,0)
				zim = true
				vim = true
				$"../../../Character/Node2D/main_hydrogen".rotation_degrees = $connect_h_1.rotation_degrees
