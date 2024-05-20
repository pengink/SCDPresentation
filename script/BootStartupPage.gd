extends Control

onready var SS = get_node("StartScreen")
onready var CR = get_node("ColorRect")
onready var AP = get_parent().get_node("AnimationPlayer")

# Called when the node enters the scene tree for the first time.
func _ready():
	AP.play("Startup")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Startup":
		AP.play("ToContinue")
