@tool
extends ItemFrameGrid2D
class_name InventoryGrid2D

@export var inventory : Inventory; ## The Inventory resource whose items are displayed in this grid

func adding_child(child, id : int) -> void: ## Wires each ItemFrame2D slot to the corresponding item from the inventory by index
	if child is ItemFrame2D and inventory:
		child.item = inventory.get_item_at(id)
