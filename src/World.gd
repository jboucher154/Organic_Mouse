extends Node2D

onready var hud = load("res://src/HUD.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(hud.instance())
	pass # Replace with function body.
	
