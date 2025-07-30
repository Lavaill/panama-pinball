extends AnimatableBody2D

func start(pos):
	#global_position = Vector2(200,200)
	pass

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

func _physics_process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += Utils.directional_speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= Utils.directional_speed
	if Input.is_action_pressed("move_down"):
		velocity.y += Utils.directional_speed
	if Input.is_action_pressed("move_up"):
		velocity.y -= Utils.directional_speed
		
	move_and_collide(velocity)
		
	#global_position += velocity * delta
	
	#position = position.clamp(Vector2.ZERO, screen_size)
	
	queue_redraw()
