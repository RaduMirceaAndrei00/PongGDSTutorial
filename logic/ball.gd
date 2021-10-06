extends Area2D

const DEFAULT_SPEED = 200
const DEFAULT_SIZE = Vector2(2.5, 2.5)

var _speed = DEFAULT_SPEED
var direction = Vector2.LEFT

onready var _initial_pos = position

var power_up_reset = []

func _process(delta):
	_speed += delta * 3
	position += _speed * delta * direction

func reset():
	direction = Vector2.LEFT
	position = _initial_pos
	_speed = DEFAULT_SPEED

func _on_power_up_cooldown_timeout():
	if power_up_reset.find("power_up") != null:
		scale = DEFAULT_SIZE
		power_up_reset.erase("power_up")
	elif power_up_reset.find("power_up_backup") != null:
		scale = DEFAULT_SIZE
		power_up_reset.erase("power_up_up")
