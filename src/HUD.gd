extends CanvasLayer

onready var PlayerVariables = get_node("/root/PlayerVariables")

func _ready():

	$Fruit_Score.text = String(PlayerVariables.fruit_score)
	$Organ_Score.text = String(PlayerVariables.organ_score)
	$Reset.hide()
	if get_tree().get_current_scene().get_name() == "World":
		$Start_Button.show()
		$Fruit_Score.hide()
		$Organ_Score.hide()
		$Fruit.hide()
		$Organ.hide()
		$Reset.hide()
		PlayerVariables.fruit_score = 0
		PlayerVariables.organ_score = 0
	
	if get_tree().get_current_scene().get_name() == "Dying" || get_tree().get_current_scene().get_name() == "good_end" || get_tree().get_current_scene().get_name() == "science_success" || get_tree().get_current_scene().get_name() == "Science_fail":
		$Reset.show()
		$Fruit_Score.hide()
		$Organ_Score.hide()
		$Fruit.hide()
		$Organ.hide()


func _process(_delta: float):
	$Fruit_Score.text = String(PlayerVariables.fruit_score)
	$Organ_Score.text = String(PlayerVariables.organ_score)


func _on_Start_Button_pressed() -> void:
	get_tree().change_scene("res://src/Levels/level1.tscn")
	$Start_Button.hide()

func _on_Reset_pressed() -> void:
	get_tree().change_scene("res://src/World.tscn")
	$Reset.hide()
