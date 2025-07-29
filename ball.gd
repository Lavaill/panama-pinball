extends RigidBody2D

func _ready() -> void:
	pass
	
func _draw():
	
	# Warning: WILL break if shape of the CollisionShape2D is changed.
	var radius = $CollisionShape2D.shape.radius * $CollisionShape2D.scale.x
	print(radius)
	var position : Vector2 = Vector2(0,0)
	#var collisionRectangleSize := Vector2($CollisionShape2D.)
	
	draw_circle(position, radius , Color.WHITE_SMOKE, true)
		



func _process(delta):
	queue_redraw()
