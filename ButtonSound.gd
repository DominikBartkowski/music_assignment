extends Button

@export var sound: AudioStream = null  # Assign this in the editor for each button.
@onready var audio_player = AudioStreamPlayer.new()

func _ready():
	# Add an AudioStreamPlayer as a child to the button.
	add_child(audio_player)
	# Connect the button's pressed signal to play_sound.
	self.pressed.connect(self.play_sound)

func play_sound():
	if sound:
		audio_player.stream = sound
		audio_player.play()
	else:
		print("No sound assigned to this button!")
