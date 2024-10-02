extends Node2D

@export var speed = 400
var canDash = true
signal dash

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	$CharacterBody2D.velocity = input_direction * speed
	if Input.is_action_pressed("space"):
		dash.emit()

func _physics_process(delta):
	get_input()
	$CharacterBody2D.move_and_slide()
	print(speed)


func _on_control_item_rect_changed(size) -> void:
	if size > 1151:
		pass
	else:
		canDash = true
