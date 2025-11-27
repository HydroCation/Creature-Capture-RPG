# scripts/components/StatsComponent.gd
extends Node
class_name StatsComponent

var max_hp : int = 10
var attack : int = 5
var defense : int = 5

func get_stat(name: String) -> int:
	return get(name)
