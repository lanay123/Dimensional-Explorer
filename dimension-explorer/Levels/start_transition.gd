extends Control

@onready var _animationPlayer = $AnimationPlayer

func _ready():
	play_animation()
	wait()

func play_animation() -> void:
	_animationPlayer.play("Fade_In")

func wait() -> void:
	await get_tree().create_timer(15).timeout
	


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Test.tscn")
