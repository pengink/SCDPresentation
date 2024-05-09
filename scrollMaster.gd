extends Spatial

var dist : float  = 0.2
var scrollPos : int
var to : float 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translation.y = lerp(translation.y, scrollPos * dist, delta * 4)
	
	self.scale.x = get_viewport().get_visible_rect().size.x * 0.001
	self.scale.y = get_viewport().get_visible_rect().size.y * 0.001

func _input(event):
	if event is InputEventMouse:
		if event.is_action_pressed("scroll_up"):
			scrollPos -= 1
		
		elif event.is_action_pressed("scroll_down"):
			scrollPos += 1
			
			
