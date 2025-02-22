extends Control

@onready var player = preload("res://Scenes/Entities/player_controller.tscn")
@onready var testlevel = "res://Scenes/Levels/test_level.tscn"
@onready var controller = $".."
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_button_pressed() -> void:
	print("Start Button Pressed!")
	#get_tree().change_scene_to_file(testlevel)
	queue_free()

func _on_quit_button_pressed() -> void:
	print("Quit Button Pressed!")
	get_tree().quit()
