extends Spatial


var sens : float = 0.002
onready var scroll = get_node("ClippedCamera/Scroll")
var toRot : Vector3

var past : bool = false

func _ready():
	pass
	
func _process(delta):
	if scroll.scrollPos <= -10 && past == false:
		print_debug("past")
		past = true
	elif scroll.scrollPos <= 10:
		#get_node("ClippedCamera").translation.z = -4
		pass
	transform.basis = transform.basis.slerp(Basis(toRot), delta * 2)

func _input(event):
	if event is InputEventMouseMotion:
		if Input.is_action_pressed("click"):
			toRot.y -= event.relative.x * sens
			toRot.x -= event.relative.y * sens
			toRot.x = clamp(toRot.x, deg2rad(-60), deg2rad(60))
			toRot.y = clamp(toRot.y, deg2rad(-45), deg2rad(45))
