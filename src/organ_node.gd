extends Area2D

const heart = preload("res://assets/OG_assets/heart.png")
const jar_brain = preload("res://assets/OG_assets/jar_brain.png")
const kidney = preload("res://assets/OG_assets/kidney.png")
const intestine = preload("res://assets/OG_assets/intestines.png")


var organs = [heart, jar_brain, kidney, intestine]


func _ready():
	var index = (randi() % 4)
	$Sprite.texture = organs[index]
