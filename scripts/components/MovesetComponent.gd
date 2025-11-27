# scripts/components/MovesetComponent.gd
extends Node
class_name MovesetComponent

var moves : Array = []   # Will later be Array[MoveResource]

func get_moves() -> Array:
	return moves
