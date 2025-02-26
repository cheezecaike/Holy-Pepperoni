extends CharacterBody2D
var pos:Vector2
var rota:float
var dir:float
var speed = 200

func _ready():
	global_position=pos
	global_rotation=rota
	
func _physics_process(delta):
	velocity=Vector2(speed,0).rotated(dir)
	move_and_slide()
	


func _on_area_2d_body_entered(body):
	if (body != self):
		print(body.name)
		queue_free()

func _on_timer_timeout() -> void:
	queue_free()
