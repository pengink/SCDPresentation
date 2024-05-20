extends Control

onready var HTTP = get_parent().get_node("HTTPRequest")
onready var cursor = get_parent().get_node("Cursor")

var on_desc : int = 0

func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	pass

func _input(event):
	if on_desc >= 1: cursor.play("active")
	if event is InputEventMouseButton && Input.is_action_just_pressed("click"):
			HTTP.request("https://www.nhlbi.nih.gov/health/sickle-cell-disease/causes")
			match on_desc:
				1:
					pass

func _on_Panel_mouse_exited():
	on_desc = 0
	cursor.play("idle")
	
func Page0_Panel():
	on_desc = 1

func Page0_Panel2():
	on_desc = 2

func Page0_Panel3():
	on_desc = 3
\
