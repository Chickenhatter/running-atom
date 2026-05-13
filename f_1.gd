extends CharacterBody2D
var first = 0
var second = 0
var zim = false
func _ready() -> void:
	velocity = Vector2(10, 10).normalized() * 200 a

func _physics_process(delta: float) -> void:
	var collide = move_and_collide(velocity * delta)
	if collide:
		velocity = velocity.bounce(collide.get_normal())
	if zim == true:
		$"../../../Character/Node2D/main_hydrogen".position = $".".position
		


func _on_hydrogen_main_area_entered(area: Area2D) -> void:
	if area.name == 'connect_f_1':
		if first == 0:
			first = $"../../../Character/Node2D/main_hydrogen".position.x
			first -= $".".position.x
			first -=$"../../../Character/Node2D/main_hydrogen".position.x
			second = $"../../../Character/Node2D/main_hydrogen".position.y
			second -= $".".position.x 
			print(second)
			print(first)
			$"../../../Node2D".position.x = first
			$"../../../Node2D".position.y = second
			$"../../../Character/Node2D".position.x = first
			$"../../../Character/Node2D".position.y = second
			zim = true
