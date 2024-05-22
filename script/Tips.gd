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
				5:
					OS.shell_open("https://www.msm.edu/blog/2019/facts-and-factors-sickle-cell-anemia.php")
				6:
					OS.shell_open("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6171532/")
				7:
					OS.shell_open("https://www.nhlbi.nih.gov/health/sickle-cell-disease/causes")
				8:
					OS.shell_open("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6939522/")
				9:
					OS.shell_open("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4800688/")
				10:
					OS.shell_open("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7510211/")
				11:
					OS.shell_open("https://www.fda.gov/news-events/press-announcements/fda-approves-first-gene-therapies-treat-patients-sickle-cell-disease")
				12:
					OS.shell_open("https://www.hematology.org/-/media/hematology/files/education/hydroxyurea-booklet.pdf")
				13:
					OS.shell_open("https://kidshealth.org/en/teens/l-glutamine.html#:~:text=L%2Dglutamine%20")
				14:
					OS.shell_open("https://www.fda.gov/drugs/resources-information-approved-drugs/fda-approved-l-glutamine-powder-treatment-sickle-cell-disease")
					
func _on_Panel_mouse_exited():
	on_desc = 0
	cursor.play("idle")
	$Label/AnimatedSprite.play("idle")
	$AnimationPlayer.stop(0.0)
	$Label.visible = false
	
func Page0_Panel():
	on_desc = 1
	$AnimationPlayer.play("Popup")

func Page0_Panel2():
	on_desc = 2
	$AnimationPlayer.play("Popup")

func Page0_Panel3():
	on_desc = 3
	$AnimationPlayer.play("Popup")


func Page1_Panel1():
	on_desc = 4
	$AnimationPlayer.play("Popup")

func Page2_Panel1():
	on_desc = 5
	$AnimationPlayer.play("Popup")

func Page2_Panel2():
	on_desc = 6
	$AnimationPlayer.play("Popup")

func Page2_Panel3():
	on_desc = 7
	$AnimationPlayer.play("Popup")
	
func Page2_Panel4():
	on_desc = 8
	$AnimationPlayer.play("Popup")
	
func Page2_Panel5():
	on_desc = 9
	$AnimationPlayer.play("Popup")
	
func Page2_Panel6():
	on_desc = 10
	$AnimationPlayer.play("Popup")


func Page3_Panel1():
	on_desc = 11
	$AnimationPlayer.play("Popup")
	
func Page3_Panel2():
	on_desc = 12
	$AnimationPlayer.play("Popup")

func Page3_Panel3():
	on_desc = 13
	$AnimationPlayer.play("Popup")

func Page3_Panel4():
	on_desc = 14
	$AnimationPlayer.play("Popup")
