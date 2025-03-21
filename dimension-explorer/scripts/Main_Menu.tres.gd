extends Control

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Start_Transition.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Options.tscn")
