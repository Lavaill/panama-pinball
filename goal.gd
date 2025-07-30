extends Node2D

var shape : Vector2 = Vector2(0,0)
var goalPosition : Vector2 = Vector2(0,0)

signal goal_registered

func _ready() -> void:
	# Warning: Will break if the shape is changed.
	shape = %GoalCollisionShape.shape.size
	goalPosition = Vector2(%GoalCollisionShape.position.x-(%GoalCollisionShape.shape.size.x/2),%GoalCollisionShape.position.y-%GoalCollisionShape.shape.size.y/2)

func _draw():
	#Use Transform2D to rotate the Rect2 if needed.
	draw_rect(Rect2(goalPosition, shape),Color.WHITE_SMOKE, true)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.name == "Ball"):
		goal_registered.emit()
	
