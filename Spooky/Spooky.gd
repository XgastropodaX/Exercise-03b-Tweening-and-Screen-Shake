extends Node2D

var drift = 3

func _ready():
	randomize()
	scale = Vector2(0,0)
	$Tween.interpolate_property(self, "scale", Vector2(0,0), Vector2(.3,.3), 1.0, Tween.TRANS_QUART, Tween.EASE_IN_OUT)
	$Tween.start()
	$Tween.interpolate_property(self, "scale", Vector2(.3,.3), Vector2(0,0), 1.0, Tween.TRANS_QUART, Tween.EASE_IN_OUT, 1.1)
	$Tween.start()
	var new_pos = Vector2(randf()*drift - (drift/2), randf()*drift - (drift/2)) + position
	$Tween.interpolate_property(self, "position", position, new_pos, 2.0, Tween.TRANS_QUART, Tween.EASE_IN_OUT, 1.1)
	$Tween.start()
	$Tween.interpolate_property(self, "modulate:a", 1,0, 2.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, 1.1)
	$Tween.start()
func _physics_process(delta):
	if not $Tween.is_active():
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
