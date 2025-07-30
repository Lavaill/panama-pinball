extends Node2D

func goal_scored():
	print("GOAL SCORED")
	$HUD.score = str(int($HUD.score) + 1)
	pass

func game_over():
	print("GAME OVER")
	pass
