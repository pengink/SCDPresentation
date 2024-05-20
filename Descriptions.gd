extends Label

onready var cursor = get_parent().get_parent().get_node("Cursor")
onready var HTTP = get_parent().get_parent().get_node("HTTPRequest")
var on_desc : int = 0

func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton && Input.is_action_just_pressed("click"):
			cursor.play("active")
			print("click")
			HTTP.request("https://www.nhlbi.nih.gov/health/sickle-cell-disease/causes")
			match on_desc:
				1:
					pass

func _on_Desc_mouse_entered():
	on_desc = 1

func _on_Desc_mouse_exited():
	on_desc = 0
	cursor.play("idle")
	


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	print("completed")
