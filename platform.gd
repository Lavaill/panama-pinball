extends AnimatableBody2D

func _ready() -> void:
	pass

func _draw():
	
	# Warning: Will break if the shape is changed.
	var shape : Vector2 = $CollisionShape2D.shape.size
	var position : Vector2 = Vector2(0-($CollisionShape2D.shape.size.x/2),0-$CollisionShape2D.shape.size.y/2)
	#var collisionRectangleSize := Vector2($CollisionShape2D.)
	
	draw_rect(Rect2(position, shape),Color.WHITE_SMOKE, true)
	
	
	#draw_circle(Vector2(0,0),200,Color.WHITE_SMOKE, true)
#draw_rect();
pass

func _process(delta):
	queue_redraw()
