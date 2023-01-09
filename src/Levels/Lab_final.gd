extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
onready var hud = load("res://src/HUD.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(hud.instance())
	pass # Replace with function body.



func _on_Timer_timeout() -> void:
	$Label.hide()
	$Text_box.hide()
