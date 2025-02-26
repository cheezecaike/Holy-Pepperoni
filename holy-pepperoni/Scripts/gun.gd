extends Node2D
var bullet_path = preload("res://Scenes/Entities/bullet.tscn")
@onready var gun = self

func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("ui_accept"):
		fire()
		
		
func fire():
	print("FIRE!")
	var bullet = bullet_path.instantiate()
	bullet.pos = global_position
	
	add_child(bullet)
	bullet.dir = rotation
	
	bullet.rota = global_rotation
	
