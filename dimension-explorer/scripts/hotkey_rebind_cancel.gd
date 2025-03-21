class_name HotkeyRebindAccept
extends Control

@onready var button = $Interact_Options as Button
@onready var label = $Interact as Label

@onready var action_name : String = "ui_accept"

func _ready():
	set_process_unhandled_key_input(false)
	_set_action_name()

func _set_action_name() -> void:
	label.text = "Unassigned"
	
	match action_name:
		"ui_accept":
			label.text = "Interact/Accept"
