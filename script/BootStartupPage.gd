extends Control

onready var SS = get_node("StartScreen")
onready var CR = get_node("ColorRect")
onready var AP = get_parent().get_node("AnimationPlayer")
onready var cursor = get_parent().get_node("Cursor")

var on_desc : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	AP.play("Startup")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Startup":
		AP.play("ToContinue")

func _on_Desc_mouse_entered():
	on_desc = 1
	cursor.play("active")
	print("mouse_entered")

func _on_Desc_mouse_exited():
	on_desc = 0
	cursor.play("idle")
	print("Mouseleft")
