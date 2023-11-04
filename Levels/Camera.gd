extends Camera2D

var player = null

func _ready():
#	Global.death_zone = limit_bottom + 200
	enabled = true

func _physics_process(_delta):
	player = get_node_or_null("/root/Game/Player_Container/Player")
	if player != null:
		zoom = Vector2(1.0,1.0)
		global_position = player.global_position
	else:
		zoom = Vector2(0.5,0.5)
		position = Vector2(0,0)
