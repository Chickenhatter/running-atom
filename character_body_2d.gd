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
	if global.finner != '':
		global.finner = ''
		bonding = true
		$Node2D/hydrogen_main.rotation_degrees = 0
		await get_tree().create_timer(3.0).timeout
		get_tree().change_scene_to_file('res://ending_scene.tscn')
	if bonding == false:
		$"../Camera2D".position = $".".position
		$Node2D/hydrogen_main.rotation_degrees += 3
	velocity = movement * 200
	move_and_slide()
