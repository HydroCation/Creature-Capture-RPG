extends Node

# 1. Capture the Monster instance
@onready var monster = $Monster

func _ready():
	print("--- 🧪 STARTING MONSTER TEST 🧪 ---")
	
	# 2. Test the Connection to StatsComponent
	# We expect this to print '5' (based on your StatsComponent code)
	var atk = monster.get_stat("attack")
	print("Monster Attack: ", atk)
	
	# 3. Test the Connection to MovesetComponent
	# We expect this to print '[]' (an empty array)
	var moves = monster.get_moves()
	print("Monster Moves: ", moves)
	
	print("--- TEST COMPLETE ---")
