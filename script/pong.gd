extends Node2D

export (Array,PackedScene) var power_ups

func _on_power_up_spawner_timeout():
	var power_up_number = round(rand_range(0,
	power_ups.size() - 1))
	
	Global.instance_node(power_ups[power_up_number], Vector2(rand_range(0, 640), rand_range(0, 400)), self)
