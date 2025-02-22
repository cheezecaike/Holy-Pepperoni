extends Node

@onready var testlevel : PackedScene = preload("res://Scenes/Levels/test_level.tscn")
@onready var player : PackedScene = preload("res://Scenes/Entities/player_controller.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_title_screen_tree_exited() -> void:
	var testlvl = testlevel.instantiate()
	add_child(testlvl)
	var test = player.instantiate()
	add_child(test)
