extends Node2D
onready var hud = load("res://src/HUD.tscn")

func _ready() -> void:
	add_child(hud.instance())

func _on_Timer_timeout() -> void:
	$Label.hide()
	$Text_box.hide()
