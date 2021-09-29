extends Control

func finished(player):
	$Win_Screen.show()
	$Win_Screen/Label.text = "Player " + str(player) + " wins!"
	get_tree().paused = true
	Global.score1 = 0
	Global.score2 = 0

func _process(delta):
	$Score_1.text = str(Global.score1)
	$Score_2.text = str(Global.score2)
	
	if Global.score1 >= 5:
		finished(1)
	elif Global.score2 >= 5:
		finished(2)
	
func _on_Button_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
