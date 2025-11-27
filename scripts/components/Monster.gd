# scripts/components/Monster.gd
extends Node

# Components should be child nodes.
@onready var stats = $StatsComponent
@onready var moveset = $MovesetComponent
@onready var sprite = $SpriteComponent

func get_stat(name: String) -> int:
	return stats.get_stat(name)

func get_moves() -> Array:
	return moveset.get_moves()
