extends Area2D

export(String) var ball_variable_modify
export(float) var ball_variable_set

func _on_power_up_area_entered(area):
	if area.is_in_group("Ball"):
		area.scale = Vector2(10, 10)
		area.set(ball_variable_modify, ball_variable_set)
		area.get_node("power_up_cooldown").wait_time = 3
		area.get_node("power_up_cooldown").start()
		area.power_up_reset.append(name)
		queue_free()

func _on_Timer_timeout():
	queue_free()
