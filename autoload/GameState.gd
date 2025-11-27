# autoload/GameState.gd
extends Node

# Holds the player's overarching game state.
# Never contains battle logic or UI logic.

var player_party : Array = []
var inventory : Dictionary = {}
var flags : Dictionary = {}

func set_flag(name: String, value: bool):
	flags[name] = value

func get_flag(name: String) -> bool:
	return flags.get(name, false)
