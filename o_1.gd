extends CharacterBody2D
var first = 0
var second = 0
var zim = false
func _ready() -> void:
	velocity = Vector2(-10, 10).normalized() * 200

func _physics_process(delta: float) -> void:
	var collide = move_and_collide(velocity * delta)
	if collide:
		velocity = velocity.bounce(collide.get_normal())
	if zim == true:
		$"../../../Character/Node2D/main_hydrogen".global_position = $CollisionPolygon2D/Node2D.global_position
		$"../../../Character/Node2D/main_hydrogen".look_at($connect_o_1.global_position)
	$CollisionPolygon2D.rotation_degrees += 5


func _on_connect_o_1_area_entered(area: Area2D) -> void:
	if area.name == 'hydrogen_main':
		if first == 0:
			if global.connector != 'H':
				$"../../../Character/Node2D/main_hydrogen/black".self_modulate.a = 0
				global.black = true
				global.o = true
				global.finner = 'n'
				global.connector = 'O'
				$"../../../Character/Node2D/main_hydrogen".position = Vector2(0,0)
				zim = true
				$"../../../Character/Node2D/main_hydrogen".rotation_degrees = $CollisionPolygon2D.rotation_degrees
