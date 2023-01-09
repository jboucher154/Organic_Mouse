extends Area2D

var forest_level_path = "res://src/Levels/cuteAf_level.tscn"
var lab_level_path = "res://src/Levels/Lab_final.tscn"
var dead = "res://src/Dying.tscn" 
var good_ending = "res://src/Levels/cuteAF_level.tscn"
var cute_end = "res://src/good_end.tscn"
var science_success = "res://src/science_success.tscn"
var level2 = "res://src/Levels/level2.tscn"
var science_fail = "res://src/Science_fail.tscn"



func _on_stump_body_entered(body: Node) -> void:

	if get_tree().get_current_scene().get_name() == "level1":
		get_tree().change_scene(level2) 
	elif get_tree().get_current_scene().get_name() == "level2" && PlayerVariables.organ_score >= PlayerVariables.fruit_score:
		get_tree().change_scene(lab_level_path)
	elif get_tree().get_current_scene().get_name() == "level2" && PlayerVariables.organ_score < PlayerVariables.fruit_score:
		get_tree().change_scene(good_ending)
	elif get_tree().get_current_scene().get_name() == "cuteAF_level" && PlayerVariables.fruit_score >= 13:
		get_tree().change_scene(cute_end)
	elif get_tree().get_current_scene().get_name() == "cuteAF_level" && PlayerVariables.fruit_score < 13:
		get_tree().change_scene(dead)
	elif get_tree().get_current_scene().get_name() == "Lab_final" && PlayerVariables.organ_score > 13:
		get_tree().change_scene(science_success)
	elif get_tree().get_current_scene().get_name() == "Lab_final" && PlayerVariables.organ_score <= 13:
		get_tree().change_scene(science_fail)
