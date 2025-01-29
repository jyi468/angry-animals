extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	pass


func die() -> void:
	queue_free()
	SignalManager.emit_signal("on_animal_died")


func _on_screen_exited() -> void:
	die()
