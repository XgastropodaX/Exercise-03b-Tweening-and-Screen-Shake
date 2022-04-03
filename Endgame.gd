extends Node2D


func _on_replay_pressed():
	var _target = get_tree().change_scene("res://UI/cutscene1.tscn")
	
func _on_quit_pressed():
	get_tree().quit()
