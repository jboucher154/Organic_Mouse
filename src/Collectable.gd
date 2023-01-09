 extends Node2D

signal item_collected



func _ready() -> void:
	pass # Replace with function body.


func _on_Node2D_body_entered(_body: Node):
	emit_signal("item_collected")
	queue_free()

func _on_Fruit_item_collected():
	PlayerVariables.fruit_score += 1


func _on_Organ_item_collected():
	PlayerVariables.organ_score += 1


func _on_Fruit1_item_collected() -> void:
	PlayerVariables.fruit_score += 1


func _on_Fruit2_item_collected() -> void:
	PlayerVariables.fruit_score += 1


func _on_Organ1_item_collected() -> void:
	PlayerVariables.organ_score += 1


func _on_Organ2_item_collected() -> void:
	PlayerVariables.organ_score += 1


func _on_Organ4_item_collected() -> void:
	PlayerVariables.organ_score += 1
