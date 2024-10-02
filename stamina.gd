extends Control

var max = 1152

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $TextureRect.size.x < 1152:
		$TextureRect.size.x += 500 * delta


func _on_player_dash() -> void:
	$TextureRect.size.x = 0
