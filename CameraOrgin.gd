extends Spatial


var sens : float = 0.01
onready var scroll = get_node("Camera/Scroll")

var past : bool = false

func _ready():
	pass
	
func _process(delta):
	if scroll.scrollPos >= -10 && past == false:
		print("past")
		past = true
	elif scroll.scrollPos <= 10:
		get_node("Camera").translation.z = -4

func _input(event):
	if event is InputEventMouseMotion:
		if Input.is_action_pressed("click"):
			rotation.y -= event.relative.x * sens
			rotation.x -= event.relative.y * sens
			rotation_degrees.x = clamp(rotation_degrees.x, -75, 75)
