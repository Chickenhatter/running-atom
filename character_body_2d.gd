extends CharacterBody2D
var bonding = false

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(_delta: float) -> void:
	var movement = Vector2.ZERO
	if Input.is_action_pressed('ui_w'):
		movement.y -= 1
	if Input.is_action_pressed('ui_s'):
		movement.y += 1
	if Input.is_action_pressed('ui_a'):
		movement.x -= 1
	if Input.is_action_pressed('ui_d'):
		movement.x += 1
	if bonding == false:
		$Node2D/hydrogen_main.rotation_degrees += 3
	velocity = movement * 200
	move_and_slide()


func _on_hydrogen_main_area_entered(area: Area2D) -> void:
	if area.name == 'connect_f_1':
		bonding = true
		$Node2D/hydrogen_main.rotation_degrees = 0
