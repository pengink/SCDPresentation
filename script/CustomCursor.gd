extends CanvasLayer


onready var cursor = get_node("Cursor")
var is_scrolling : bool = false
var screen : Viewport
var mouse_pos : Vector2
var dt : float


# Called when the node enters the scene tree for the first time.
func _ready():
	Input.mouse_mode = 1
	screen = get_viewport()
	cursor.offset = screen.get_mouse_position()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	dt = delta
	is_scrolling = false
	
	if Input.is_action_pressed("escape"):
		print("klik")
		get_tree().quit()
		
	mouse_pos = screen.get_mouse_position()
	cursor.offset = cursor.offset.linear_interpolate(mouse_pos, delta * 10)
	print(get_node("Control/ScrollContainer").scroll_horizontal)


func _on_VScrollBar_scrolling():
	cursor.hide()


func _on_VScrollBar_mouse_exited():
	cursor.show()
