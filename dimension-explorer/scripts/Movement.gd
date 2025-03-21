extends CharacterBody2D
class_name player
###############################################

@export var interaction_range: float = 10.0  # Distance to interact with a tile
@onready var tilemap: TileMap = get_tree().get_first_node_in_group("TileMap")  # Get the tilemap in the scene

func _input(event):
	if event.is_action_pressed("interact"):
		interact_with_tile()

func interact_with_tile():
	if not tilemap:
		return

	var tile_pos = tilemap.local_to_map(global_position)  # Convert player position to tile position
	var tile_data = tilemap.get_cell_tile_data(0, tile_pos)  # Get tile data from main layer

	if tile_data:
		var interaction_type = tile_data.get_custom_data("interaction_type")
		if interaction_type == "toggle":
			tilemap.call_deferred("toggle_tile", tile_pos)
###############################################

@onready var _animated_sprite = $Gotta_Move_it
@export var speed = 143
var moving = false
var facing_direction = Vector2.ZERO
var interactable_object = null

@onready var _Player_Collision = $Player_Collision

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if Input.is_action_pressed("ui_right") || Input.is_action_pressed("ui_left"):
		direction.y = 0
	elif Input.is_action_pressed("ui_up") || Input.is_action_pressed("ui_down"):
		direction.x = 0
	else:
		direction = Vector2.ZERO
	
	direction = direction.normalized()
	
	velocity = direction * speed
	move_and_slide()
	
	if direction != Vector2.ZERO:
		facing_direction = direction
		moving = true
		if direction.x > 0:
			_animated_sprite.play("WALKING_RIGHT")
		elif direction.x < 0:
			_animated_sprite.play("WALKING_LEFT")
		elif direction.y > 0:
			_animated_sprite.play("WALKING_DOWN")
		elif direction.y < 0:
			_animated_sprite.play("WALKING_UP")
	else:
		if moving:
			_animated_sprite.stop()
			moving = false
	
	
	
