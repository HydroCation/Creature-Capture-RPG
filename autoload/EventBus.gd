# autoload/EventBus.gd
extends Node

# All global signals are declared here.
# No system directly references another — they only "listen" to the EventBus.

signal monster_selected(monster_id)
signal battle_started(data)
signal battle_ended(result)
signal ui_request_open_menu(menu_id)
