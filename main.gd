extends Node2D

#Screen shake logic
@export var random_shake_strength: float = 30.0
@export var random_shake_decay_rate: float = 5.0
@export var noise_shake_speed: float = 30.0
@export var noise_shake_rate: float = 60.0
@onready var rand = RandomNumberGenerator.new()
@onready var noise = FastNoiseLite.new()

var noise_i := 0.0
var shake_strength: float = 0.0

func goal_scored():
	print("GOAL SCORED")
	$HUD.score = str(int($HUD.score) + 1)
	apply_shake()
	pass

func game_over():
	print("GAME OVER")
	pass

func wall_hit():
	print("WALL HIT")
	pass

func apply_shake():
	shake_strength += random_shake_strength
	
func get_noise_offset(delta: float):
	noise_i += delta * noise_shake_speed
	return Vector2(
		noise.get_noise_2d(1, noise_i) * shake_strength,
		noise.get_noise_2d(100, noise_i) * shake_strength,
	)
	#noise.get_noise_2d
	
func _process(delta: float) -> void:
	#Logic should likely be in the camera object
	shake_strength = lerp(shake_strength, 0.0, random_shake_decay_rate * delta)
	$Camera2D.offset = get_noise_offset(delta)
	
	
