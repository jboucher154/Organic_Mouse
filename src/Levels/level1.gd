extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
onready var hud = load("res://src/HUD.tscn")
onready var player_vars = get_node("/root/PlayerVariables")
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(hud.instance())
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func _on_Timer_timeout() -> void:
	$Label.hide()
	$Text_box.hide()
