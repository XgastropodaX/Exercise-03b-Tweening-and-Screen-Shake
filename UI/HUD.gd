extends Control

func _ready():
	var _changed = Global.connect("changed",self,"_on_score_changed")
	_on_score_changed()

func _on_score_changed():
	$Score.text = "Potion Completion: " + str(Global.score) + "%"
