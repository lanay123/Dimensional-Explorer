extends Area2D

var Player = player.new()

func _ready() -> void:
	connect("area_entered", Callable(self, "Player"))
