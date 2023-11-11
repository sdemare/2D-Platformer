extends Node

var coins = 0

func _unhandled_input(event):
	if event.is_action_pressed("Quit"):
		get_tree().quit()


func add_coin():
	coins += 1
	var HUD = get_node_or_null("/root/Game/UI/HUD/Coins")
	if HUD != null:
		HUD.text = "Coins: " + str(coins)
