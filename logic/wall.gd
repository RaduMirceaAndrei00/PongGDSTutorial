extends Area2D

func _on_wall_area_entered(area):
	if area.name == "Ball":
		if self.name == "LeftWall":
			Global.score2 += 1
		else:
			Global.score1 += 1
		area.reset()
