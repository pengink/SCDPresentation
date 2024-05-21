extends Control

onready var cursor = get_parent().get_node("Cursor")

var on_desc : int = 0

func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	$Label.rect_position = Vector2(cursor.offset.x + 10, cursor.offset.y - 30)

func _input(event):
	if on_desc >= 1: 
		cursor.play("active")
	if event is InputEventMouseButton && Input.is_action_just_pressed("click"):
			match on_desc:
				1:
					OS.shell_open("https://www.nhlbi.nih.gov/health/sickle-cell-disease/causes")
				2:
					OS.shell_open("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6913482/")
				3:
					OS.shell_open("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6913482/")
				4:
					OS.shell_open("https://www.nhlbi.nih.gov/health/sickle-cell-disease/causes")
					
func _on_Panel_mouse_exited():
	on_desc = 0
	cursor.play("idle")
	$Label/AnimatedSprite.play("idle")
	$Label.visible = false
	
func Page0_Panel():
	on_desc = 1
	$AnimationPlayer.play("Popup")

func Page0_Panel2():
	on_desc = 2
	$Label/AnimatedSprite.play("donut_chart")
	$Label/AnimatedSprite.offset = Vector2(600, -600)
	$Label/AnimatedSprite.scale = Vector2(0.3, 0.3)
	$AnimationPlayer.play("Popup")

func Page0_Panel3():
	on_desc = 3
	$AnimationPlayer.play("Popup")


func Page1_Panel1():
	on_desc = 4
	$Label/AnimatedSprite.play("sickling")
	$AnimationPlayer.play("Popup")
	$Label/AnimatedSprite.offset = Vector2(200, -320)
	$Label/AnimatedSprite.scale = Vector2(.6, .6)
