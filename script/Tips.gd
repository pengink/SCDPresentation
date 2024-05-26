extends Control

onready var cursor = get_parent().get_node("Cursor")

var on_desc : int = 0

export var is_down : bool = false

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
				16:
					OS.shell_open("https://www.in.gov/health/gnbs/files/con_SCD_ASH_Hydroxyurea.pdf")
				17:
					OS.shell_open("https://www.msm.edu/blog/2019/facts-and-factors-sickle-cell-anemia.php")
				18:
					OS.shell_open("https://www.cdc.gov/ncbddd/sicklecell/index.html")
				19:
					OS.shell_open("https://www.fda.gov/drugs/resources-information-approved-drugs/fda-approved-l-glutamine-powder-treatment-sickle-cell-disease")
				20:
					OS.shell_open("https://www.nhlbi.nih.gov/health/sickle-cell-disease")
				21:
					OS.shell_open("https://medlineplus.gov/genetics/condition/sickle-cell-disease/")
				22:
					OS.shell_open("https://www.fda.gov/news-events/press-announcements/fda-approves-first-gene-therapies-treat-patients-sickle-cell-disease")
				23:
					OS.shell_open("https://doi.org/10.3324/haematol.2016.154245")
				24:
					OS.shell_open("https://kidshealth.org/en/teens/l-glutamine.html")
				25:
					OS.shell_open("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6913482/")
				26:
					OS.shell_open("https://health.ucdavis.edu/news/headlines/study-finds-black-women-with-sickle-cell-disease-have-worse-maternal-health-outcomes/2023/06")
					
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


func _on_Button_pressed():
	if is_down == false:
		get_parent().get_node("AnimationPlayer").play("SourcesDown")
	else:
		get_parent().get_node("AnimationPlayer").play("SourcesUp")

func _on_Button_mouse_entered():
	on_desc = 15


func Citations_0():
	on_desc = 16
	$AnimationPlayer.play("Popup")
	
func Citations_1():
	on_desc = 17
	$AnimationPlayer.play("Popup")
	
func Citations_2():
	on_desc = 18
	$AnimationPlayer.play("Popup")
	
func Citations_3():
	on_desc = 19
	$AnimationPlayer.play("Popup")
	
func Citations_4():
	on_desc = 20
	$AnimationPlayer.play("Popup")

func Citations_5():
	on_desc = 21
	$AnimationPlayer.play("Popup")

func Citations_6():
	on_desc = 22
	$AnimationPlayer.play("Popup")

func Citations_7():
	on_desc = 23
	$AnimationPlayer.play("Popup")

func Citations_8():
	on_desc = 24
	$AnimationPlayer.play("Popup")

func Citations_9():
	on_desc = 25
	$AnimationPlayer.play("Popup")

func Citations_10():
	on_desc = 26
	$AnimationPlayer.play("Popup")
