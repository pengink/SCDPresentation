extends Spatial

onready var ray : RayCast = get_node("RayCast")
onready var camera : Camera = get_node("ClippedCamera")
onready var light = get_node("Light")
var can_camera_movement : bool = true
var sens : float = 0.002
var toRot : Vector3
var cast_length = 20.0

var past : bool = false

func _ready():
	pass
	
func _physics_process(delta):
	var mouse_pos = get_tree().get_root().get_node("Main/GUI/Cursor").offset
	
	var space_state = get_world().direct_space_state
	var start = camera.project_ray_origin(mouse_pos)
	var end = start + camera.project_ray_normal(mouse_pos) * cast_length
	var intersection = space_state.intersect_ray(start, end)
	
	if !intersection.empty():
		light.global_translation = intersection.position - (camera.project_ray_normal(mouse_pos) * 3)
	else:
		light.global_translation = end
	
	transform.basis = transform.basis.slerp(Basis(toRot), delta * 2)
	
	if !get_tree().get_root().get_node("Main/GUI/Cursor").visible:
		can_camera_movement = false
	else:
		can_camera_movement = true

func _input(event):
	if event is InputEventMouseMotion && can_camera_movement == true:
		if Input.is_action_pressed("click"):
			toRot.y -= event.relative.x * sens
			toRot.x -= event.relative.y * sens
		else:
			toRot.y -= event.relative.x * sens * 0.4
			toRot.x -= event.relative.y * sens * 0.4
		toRot.x = clamp(toRot.x, deg2rad(-60), deg2rad(60))
		toRot.y = clamp(toRot.y, deg2rad(-45), deg2rad(45))
			

