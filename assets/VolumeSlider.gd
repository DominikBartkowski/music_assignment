extends Slider

func _ready():
	# Set the slider's initial value to the current global volume.
	value = db_to_linear(AudioServer.get_bus_volume_db(0))
	# Connect the value_changed signal to update_volume.
	value_changed.connect(update_volume)

func update_volume(new_value):
	# Convert the linear value to decibels and set the master bus volume.
	var db_value = linear_to_db(new_value)
	AudioServer.set_bus_volume_db(0, db_value)
