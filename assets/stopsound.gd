extends Button

func _ready():
	# Connect the button's pressed signal to the stop_all_sounds function.
	self.pressed.connect(stop_all_sounds)

func stop_all_sounds():
	# Find all AudioStreamPlayer nodes in the scene and stop them.
	var audio_players = get_tree().get_nodes_in_group("AudioPlayers")
	for player in audio_players:
		if player.is_playing():
			player.stop()

	print("All sounds stopped.")
