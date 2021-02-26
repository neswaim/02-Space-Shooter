extends Node2D

var max_enemies = 5
var Enemy1 = load("res://Enemy/Enemy1.tscn")

func _ready():
	randomize()

func _physics_process(delta):
	if get_child_count() < max_enemies:
		if randf() < 0.3:
			var enemy1 = Enemy1.instance()
			enemy1.position.y = -100
			enemy1.position.x = randi() % 1024
			add_child(enemy1)
