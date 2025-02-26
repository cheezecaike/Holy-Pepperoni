extends StaticBody2D

@export var item: InvItem
var player 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func drop_apple():
	
	player.collect(item)

func _on_interact_component_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and body.name == "PlayerController":
		print("Body Detected!")
		player = body
		player.collect(item)
