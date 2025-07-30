extends Node2D

signal pit_entered




func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.name == "Ball"):
		pit_entered.emit()
