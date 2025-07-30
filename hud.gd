extends CanvasLayer

var score := "0"

func _process(delta: float) -> void:
	$RichTextLabel.text = score
