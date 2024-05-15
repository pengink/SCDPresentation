extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var screen : Viewport
var mouse_pos : Vector2
var dt : float


# Called when the node enters the scene tree for the first time.
func _ready():
	Input.mouse_mode = 1
	screen = get_viewport()
	offset = screen.get_mouse_position()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	dt = delta
	if Input.is_action_pressed("escape"):
		print("klik")
		get_tree().quit()
		
	mouse_pos = screen.get_mouse_position()
	offset = offset.linear_interpolate(mouse_pos, dt * 2)


