extends Node2D


onready var hud = load("res://src/HUD.tscn")



func _ready() -> void:
	add_child(hud.instance())
	pass # Replace with function body.
