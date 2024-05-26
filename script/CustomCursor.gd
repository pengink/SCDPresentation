extends CanvasLayer


onready var cursor = get_node("Cursor")
onready var animPlayer = get_node("AnimationPlayer")
onready var scrollCon = get_node("ScrollContainer")
onready var timer = get_node("Timer")

export var can_scroll = false

var scrollBar : HScrollBar
var screen : Viewport
var mouse_pos : Vector2

var scroll_value : int = 0
var current_page : int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	Input.mouse_mode = 1
	screen = get_viewport()
	cursor.offset = screen.get_mouse_position()
	
	animPlayer.play("Startup")
	
	scrollBar = scrollCon.get_node("_h_scroll")
	if scrollBar != null:
		scrollBar.connect("changed", self, "_on_changed")
		print("connected")

func _physics_process(delta):
	mouse_pos = screen.get_mouse_position()
	cursor.offset = cursor.offset.linear_interpolate(mouse_pos, delta * 10)
	
	on_reload()
	
func on_reload():
	if Input.is_action_just_pressed("escape"):
		get_tree().reload_current_scene()

func _on_changed():
	if can_scroll == true:
		scroll_value += 1
		timer.start()

func _on_Timer_timeout():
	if scroll_value >= 10:
		current_page += 1
		match_page()
	scroll_value = 0
	scrollCon.scroll_vertical = 0
	
	
func match_page():
	can_scroll = false
	match current_page:
		1:
			animPlayer.play("MainPage")
		2:
			animPlayer.play("Page2")
		3:
			animPlayer.play("Page3")


func _on_AnimationPlayer_animation_finished(anim_name):
	if current_page >= 1:
		can_scroll = true
		
func _on_CheckButton_toggled(toggle):
	get_tree().root.get_node("Main/World/Spawner/Path").emit_signal("IS_SICKLING")
	
	

