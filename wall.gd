extends StaticBody2D

signal wall_hit

func _draw():
	
	# Warning: Will break if the shape is changed.
	var walls = [$LeftWall, $RightWall]
	var shape  = $LeftWall.shape
	print(shape)
	
	for wall in walls:
		pass
	#var position : Vector2 = Vector2(0-($CollisionShape2D.shape.size.x/2),0-$CollisionShape2D.shape.size.y/2)
	
	#var collisionRectangleSize := Vector2($CollisionShape2D.)
	
	#draw_line(Rect2(position, shape),Color.WHITE_SMOKE, true)
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.name == "Ball"):
		wall_hit.emit()
