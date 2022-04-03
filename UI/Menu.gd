extends Control

func _ready():
	pass


func _on_Play_pressed():
	var _target = get_tree().change_scene("res://UI/cutscene1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
