extends Path

onready var timer = get_parent().get_node("Timer")

export var cellScene : PackedScene
export var SPEED : int = 12
var points : Array
var placementOffset : float = 2.5


func _ready():
	var pathway = Curve3D.new()
	points = get_parent().get_node("Points").get_children()
		
	for i in points.size():
		pathway.add_point(points[i].translation)
		#pathway.set_point_tilt(i, randi() % 2)
		
	curve = pathway

func _physics_process(delta):
	randomize()
	for i in get_child_count():
		var cell = get_child(i)
		var randVector = randf()
		cell.set_offset(cell.get_offset() + (SPEED * delta))
		cell.get_node("Cell").rotation += Vector3(randVector, 1-randVector, 0) * delta * 6
		
		if cell.get_unit_offset() >= 0.9:
			cell.queue_free()
		
	#pathFollow.set_offset(pathFollow.get_offset() + (SPEED * delta))
	#get_node("PathFollow/Cell").rotation_degrees += Vector3(1, 1, 1) * SPEED * randf()

func _on_Timer_timeout():
	var instance = cellScene.instance()
	instance.set_h_offset(rand_range(-placementOffset, placementOffset))
	instance.set_v_offset(rand_range(-placementOffset, placementOffset))
	add_child(instance)

	timer.wait_time = randf()/3
