extends Area2D

const apple = preload("res://assets/OG_assets/apple.png")
const blueberry = preload("res://assets/OG_assets/blueberry.png")
const grain = preload("res://assets/OG_assets/grain.png")
const grass = preload("res://assets/OG_assets/grass.png")
const raspberry = preload("res://assets/OG_assets/r_berry.png")
const blackberry = preload("res://assets/OG_assets/b_berry.png")

var fruits = [apple, blueberry, grain, grass, raspberry, blackberry]
# Called when the node enters the scene tree for the first time.
func _ready():
	var index = (randi() % 6)
	$Sprite.texture = fruits[index]
	pass # Replace with function body.
